module DeploymentsHelper
  
  def input_type(name)
    if name.match(/password/)
      "password"
    else
      'text'
    end
  end

  def if_disabled_host?(host, role, text)
    if @deployment.excluded_host_ids.include?(host.id)
      test
    else
      role.precheck ? '' : text
    end
  rescue
    ''
  end

  def if_enabled_host?(host, role, text)
    if @deployment.excluded_host_ids.include?(host.id)
      ''
    else
      role.precheck ? text : ''
    end
  rescue
    text
  end

end
