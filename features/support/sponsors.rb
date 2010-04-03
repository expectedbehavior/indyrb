module SponsorsHelpers
  Sponsors = YAML.load(File.read(File.join(RAILS_ROOT, 'config', 'sponsors.yml')))

  def html_response
    $browser.html.to_s
  end

  def with_sponsor(info)
    with_tag("a[href=?]", info['url']) do
      with_tag("img[src=?][alt=?]", File.join("/images/sponsors", info['image']), info['name'])
    end
    with_tag("p", info['description'])
  end
end

World(SponsorsHelpers)
