<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');

require_once(FUEL_PATH.'models/'.(( version_compare(FUEL_VERSION, '1.4', '<') ) ? 'b' : 'B').'ase_module_model.php');

class Blog_comments_model extends Base_module_model {

	public $required = array('post_id', 'author_name' => 'Please fill out the required field Name', 
		'author_email' => 'Please fill out the required field Email', 
		'content' => 'Please fill out the required field Comment'
		);
	public $hidden_fields = array('parent_id', 'last_modified');
	
	function __construct()
	{
		parent::__construct('blog_comments', BLOG_FOLDER); // table name
		$this->add_validation('author_email', 'valid_email', lang('blog_error_invalid_comment_email'));
		$this->add_filter($this->_tables['blog_posts'].'.title');
	}

	// used for the FUEL admin
	function list_items($limit = NULL, $offset = NULL, $col = 'date_added', $order = 'desc', $just_count = FALSE)
	{
		if ($col == 'date_added') $col = $this->_tables['blog_comments'].'.date_added';
		$this->db->select($this->_tables['blog_comments'].'.id, title AS post_title, '.$this->_tables['blog_comments'].'.content AS comment, author_name AS comment_author_name, '.$this->_tables['blog_comments'].'.is_spam, '.$this->_tables['blog_comments'].'.date_added as date_submitted, '.$this->_tables['blog_comments'].'.published', FALSE);
		$this->db->join($this->_tables['blog_posts'], $this->_tables['blog_comments'].'.post_id = '.$this->_tables['blog_posts'].'.id', 'inner');
		$data = parent::list_items($limit, $offset, $col, $order, $just_count);
		if (empty($just_count))
		{
			foreach($data as $key => $val)
			{
				$data[$key]['date_submitted'] = english_date($data[$key]['date_submitted'], TRUE);
			}
		}
		return $data;
	}
	
	function tree($just_published = FALSE)
	{
		$CI =& get_instance();
		$CI->load->module_model(BLOG_FOLDER, 'blog_posts_model');
		$CI->load->helper('array');

		$return = array();
		
		$where = ($just_published) ? $where = array('published' => 'yes') : array();
		$comments = $this->find_all($where, 'title asc');
		foreach($comments as $comment)
		{
			if (!isset($return[$comment->post_id]))
			{
				$return['p_'.$comment->post_id] = array('id' => 'p_'.$comment->post_id, 'label' => $comment->title, 'location' => fuel_url('blog/posts/edit/'.$comment->post_id));
			}
			$label = (!empty($comment->author_name)) ? $comment->author_name : $comment->author_email;
			$attributes = ($comment->published == 'no') ? array('class' => 'unpublished', 'title' => 'unpublished') : NULL;
			$return['c_'.$comment->id] = array('id' => $comment->id, 'label' => $label, 'parent_id' => 'p_'.$comment->post_id, 'location' => fuel_url('blog/posts/edit/'.$comment->post_id), 'attributes' =>  $attributes);
		}
		$return = array_sorter($return, 'label', 'asc');
		return $return;
	}
	
	function form_fields($values = array(), $related = array())
	{
		$fields = parent::form_fields($values, $related);
		$CI =& get_instance();
		$CI->load->module_model(BLOG_FOLDER, 'blog_users_model');
		$CI->load->module_model(BLOG_FOLDER, 'blog_posts_model');
		
		$post_title = '';

		$post_options = $CI->blog_posts_model->options_list('id', 'title', array(), 'publish_date desc');
		if (empty($post_options))
		{
			$fields = array();
			$fields['error'] = array('type' => 'copy', 'value' => lang('blog_error_no_posts_to_comment'));
			$fields['__FORM_BUILDER__'] = array('submit_value' => '');
			return $fields;
		}
		
		$fields['post_id'] = array('type' => 'select', 'options' => $post_options, 'label' => 'Post');

		if (!empty($values['id']))
		{
			$post = $CI->blog_posts_model->find_by_key($values['post_id']);
			if (isset($post->id))
			{
				$post_title = $post->title;

				if (!$post->is_published())
				{
					add_error(lang('blog_post_is_not_published'));
				}
			}
			
			$fields['post_id'] = array('type' => 'hidden', 'value' => $post_title, 'displayonly' => TRUE);

			$fields['post_title'] = array('value' => $post_title, 'order' => 1);
			
			$fields['post_title']['displayonly'] = TRUE;
			$fields['post_published']['displayonly'] = TRUE;
			$fields['author_email']['displayonly'] = TRUE;
			$fields['author_name']['displayonly'] = TRUE;
			$fields['post_title']['displayonly'] = TRUE;
			$fields['author_website']['displayonly'] = TRUE;
			$fields['ip_host']['displayonly'] = TRUE;
			$fields['date_submitted'] = array('displayonly' => TRUE, 'value' => english_date($values['date_added'], TRUE));
			
			$ip_host = (!empty($values['author_ip'])) ? gethostbyaddr($values['author_ip']).' ('.$values['author_ip'].')' : '';
			$fields['ip_host'] = array('value' => $ip_host, 'order' => 5, 'displayonly' => TRUE);
			
			$fields['Reply to this Comment'] = array('type' => 'section');
			$replies = $this->find_all_array(array('parent_id' => $values['id']));
			$reply_arr = array();
			foreach($replies as $r)
			{
				$reply_arr[] = $r['content'];
			}
			$fields['replies'] = array('displayonly' => TRUE, 'value' => implode('<br /><br />', $reply_arr));
			
			// don't show the form if the email_notify_comment_reply setting is off
			// on_after_save checks if reply_notify has been posted before sending an email, so this will also stop the email from firing because of that
			if (isset($post->id) AND $post->author_id == $CI->fuel->auth->user_data('id') OR $CI->fuel->auth->is_super_admin())
			{
				$fields['reply'] = array('type' => 'textarea');
				if($CI->fuel->blog->config('email_notify_comment_reply')) {
					$notify_options = array('Commentor' => lang('blog_comment_notify_option2'), 'All' => lang('blog_comment_notify_option1'), 'None' => lang('blog_comment_notify_option3'));
					$fields['reply_notify'] = array('type' => 'enum', 'options' => $notify_options);
				}
			}
			
			// hidden
			$fields['author_ip'] = array('type' => 'hidden');
			
		}
		else
		{
			$fields['author_ip'] = array('type' => 'hidden', 'value' => $_SERVER['REMOTE_ADDR'], 'label' => 'Author IP Address');
			$fields['is_spam'] = array('type' => 'hidden');
			$fields['date_added']['type'] = 'hidden'; // so it will auto add
			$fields['last_modified']['type'] = 'hidden'; // so it will auto add
		}
		
		// set author to current fuel user
		if (empty($fields['author_id']) AND $CI->fuel->auth->user_data('id'))
		{
			$fields['author_id']['value'] = $CI->fuel->auth->user_data('id');
		}
		$fields['author_id'] = array('type' => 'hidden');
		return $fields;
	}

	// need to notify commentor if author or admin comment
	function on_after_save($values)
	{
		
		$posted = $this->normalized_save_data;
		$CI =& get_instance();
		$CI->load->module_model(BLOG_FOLDER, 'blog_posts_model');
		$CI->load->module_model(BLOG_FOLDER, 'blog_users_model');
		$post = $CI->blog_posts_model->find_by_key($posted['post_id']);
		// must be logged into FUEL, must be the author, must be in the admin pages, must have reply posted and be published
		if ($CI->fuel->auth->is_logged_in() AND ($post->author_id == $CI->fuel->auth->user_data('id') 
			OR $CI->fuel->auth->is_super_admin()) AND in_fuel_admin() AND !empty($posted['reply']) 
			)
		{
			$comment = $this->create();
			$comment->post_id = $post->id;
			$comment->parent_id = $values['id'];
			$comment->author_id = $CI->fuel->auth->user_data('id');

			$user = $CI->blog_users_model->find_one(array('fuel_user_id' => $CI->fuel->auth->user_data('id')));
			$display_name = ($user->has_display_name()) ? $user->display_name : $user->first_name.' '.$user->last_name;
			$comment->author_name = $display_name;
			$comment->author_email = $user->email;
			$comment->author_website = '';
			$comment->author_ip = $_SERVER['REMOTE_ADDR'];
			$comment->content = trim($this->input->post('reply', TRUE));
			$comment->date_added = NULL; // will automatically be added
			if (!empty($posted['reply_notify']) AND strtolower($posted['reply_notify']) != 'none' AND $comment->validate())
			{
				// create comment object
				$config['wordwrap'] = TRUE;
				$CI->load->library('email', $config);
				$CI->load->module_library(BLOG_FOLDER, 'fuel_blog');
				$CI->load->module_model(BLOG_FOLDER, 'blog_comments_model');

				if (strtolower($posted['reply_notify']) == 'all')
				{
					$comments = $CI->blog_comments_model->find_all_array_assoc('author_email', array('published' => 'yes', 'post_id' => $comment->post_id));
					$to = array_keys($comments);
				}
				else
				{
					$to = $values['author_email'];
				}

				// send email
				$CI->email->from($this->config->item('from_email', 'fuel'), $this->config->item('site_name', 'fuel'));
				$CI->email->to($to); 
				$msg = $CI->email->subject(lang('blog_comment_reply_subject', $this->fuel->blog->config('title')));
				$msg = lang('blog_comment_reply_msg', $CI->fuel->auth->user_data('email'), $post->title);
				$msg .= "\n\n".$comment->content;
				$msg .= "\n\n".$post->url."\n\n";

				$this->email->message($msg);

				if (!$this->email->send())
				{
					$this->add_error(lang('error_sending_email', $values['author_email']));
				}
			}
			$comment->save();
			
		}
		
		return $values;
	}
	
	function _common_query($display_unpublished_if_logged_in = NULL)
	{
		$this->db->select($this->_tables['blog_comments'].'.*, '.$this->_tables['blog_posts'].'.id as post_id, 
		'.$this->_tables['blog_posts'].'.title as title, '.$this->_tables['blog_posts'].'.slug as slug,
		'.$this->_tables['blog_posts'].'.published AS post_published', FALSE);
		$this->db->select('YEAR('.$this->_tables['blog_posts'].'.publish_date) as year, DATE_FORMAT('.$this->_tables['blog_posts'].'.publish_date, "%m") as month, DATE_FORMAT('.$this->_tables['blog_posts'].'.publish_date, "%d") as day,', FALSE);
		$this->db->join($this->_tables['blog_posts'], $this->_tables['blog_comments'].'.post_id = '.$this->_tables['blog_posts'].'.id', 'inner');
	}

}

class Blog_comment_model extends Base_module_record {

	public $title;
	public $slug;
	public $spam_checked = FALSE;

	// not using filtered fields because we don't want any PHP function translation'
	function get_content_formatted()
	{
		$this->_CI->load->helper('typography');
		$output = auto_typography($this->_fields['content']);
		return $output;
	}
	
	function get_post()
	{
		$model = $this->_CI->fuel->blog->model('blog_posts');
		return $model->find_by_key($this->post_id);
	}
	
	function is_duplicate()
	{
		$where['UPPER('.$this->_parent_model->tables('blog_comments').'.content)'] = strtoupper($this->content);
		$where['author_ip'] = $this->author_ip;
		$cnt = $this->_parent_model->record_count($where);
		return ($cnt > 0);
	}
	
	function is_by_post_author()
	{
		$post = $this->post;
		return (!empty($this->author_id) AND $post->author->id == $this->author_id);
	}
	
	function is_child()
	{
		return (!empty($this->parent_id));
	}
	
	function get_author_and_link()
	{
		if (!empty($this->author_website))
		{
			return anchor(prep_url($this->author_website), $this->author_name);
		}
		else
		{
			return $this->author_name;
		}
	}
	
	function get_date_formatted($format = 'M d, Y')
	{
		return date($format, strtotime($this->date_added));
	}	

	function is_spam()
	{
		if (!$this->spam_checked)
		{
			$this->check_is_spam();
		}
		return is_true_val($this->_fields['is_spam']);
	}

	function check_is_spam()
	{
		$this->is_spam = ($this->_CI->fuel->blog->is_spam($this)) ? 'yes' : 'no';
		$this->spam_checked = TRUE;
		return $this->is_spam;
	}

	function is_savable()
	{
		if (!isset($this->_CI->stopforumspam))
		{
			$this->_CI->load->module_library(BLOG_FOLDER, 'stopforumspam');
		}

		// if this has not been spam checked, we do so
		if (!$this->spam_checked)
		{
			$this->check_is_spam();
		}

		if ($this->_CI->stopforumspam->is_ignorable())
		{
			return FALSE;
		}

		return !$this->is_spam() OR ($this->is_spam() AND $this->_CI->fuel->blog->config('save_spam'));
	}
	
}
?>