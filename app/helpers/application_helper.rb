module ApplicationHelper
  def render_flashes
    # manipulate flash?
    render :partial => 'common/flashes'
  end

  def get_login_bar
    bar = []
    user = current_user
    if user
      bar << "<span>Welcome, " + user.email + "</span>"
      # bar << link_to("logout", user_session_url, :method => 'delete')
      bar << link_to("logout", '/logout')
    else
      bar << "<span>Welcome, Guest</span>"
      # bar << link_to("login", new_user_session_path)
      bar << link_to("login", '/login')
      # bar << link_to("register", new_account_url)
      bar << link_to("signup", '/signup')
    end
    return bar.join(' | ')
  end

  def get_nav_bar
    unless current_user.nil?
      items = {
        'Home' => root_path,
        'Dashboard' => dashboard_path,
        'Create new Customer' => new_customer_path,
        'Create new Property' => new_property_path
      }
      render :partial => 'common/nav_bar', :locals => { :items => items }
    end
  end

  def link_to_with_selected_if_current(name, options = {}, html_options = {})
    link_to_unless(current_page?(options), name, options, html_options) do
      css_class = html_options.has_key?(:class) ? html_options[:class] + " selected" : "selected"
      link_to(name, options, :class => css_class)
    end
  end
end
