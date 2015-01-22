module DeploymentsHelper
  
  def input_type(name)
    if name.match(/password/)
      "password"
    else
      'text'
    end
  end

  def if_disabled_host?(host, role, text)
    if deployment_check_this_host?(host, role)
      ''
    else
      text
    end
  rescue
    ''
  end

  def if_enabled_host?(host, role, text)
    if deployment_check_this_host?(host, role)
      text
    else
      ''
    end
  rescue
    text
  end

  private
  def deployment_check_this_host?(host, role)
    !@deployment.excluded_host_ids.include?(host.id) && role.precheck
  end

end
