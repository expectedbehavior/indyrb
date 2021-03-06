module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    when /the login page/
      login_path

    when /the signup page/
      signup_path

    when /the commits page/
      source_commits_path

    when /the admin featured projects page/
      admin_featured_projects_path

    when /the featured projects page/
      featured_projects_path
    
    when /the home\s?page/
      '/'
      
    when /the add feed page/
      admin_feeds_path
      
    
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
