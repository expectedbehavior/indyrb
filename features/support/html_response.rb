module HtmlResponseHelper
  def html_response
    $browser.html.to_s
  end
end

World(HtmlResponseHelper)
