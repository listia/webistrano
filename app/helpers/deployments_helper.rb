module DeploymentsHelper
  def input_type(name)
    if name.match(/password/)
      "password"
    else
      'text'
    end
  end

  def disabled_text(host, role, text)
    if deployable?(host, role)
      ''
    else
      text
    end
  rescue
    ''
  end

  def enabled_text(host, role, text)
    if deployable?(host, role)
      text
    else
      ''
    end
  rescue
    text
  end

  private

  def deployable?(host, role)
    !@deployment.excluded_host_ids.include?(host.id) && role.precheck
  end
end
