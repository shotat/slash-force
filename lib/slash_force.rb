require "slash_force/version"

module SlashForce
  def append_trailing_slash
    url, q, parameters = request.original_url.partition('?')
    redirect_to "#{url}/#{q}#{parameters}" unless trailing_slash_present?(url)
  end

  private

  def trailing_slash_present?(str)
    str.to_s.last == '/'
  end
end
