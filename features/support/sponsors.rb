module SponsorsHelpers
  Sponsors = {
    'nFrame' => <<-EOT
<a href="http://www.nframe.com" target="_blank">nFrame</a> n|Frame has 15 years of experience providing professional technology infrastructure services to Indianapolis and Indiana organizations of all sizes.  These services include data center services, network management, commercial Internet broadband access, managed IT services, SAN solutions, disaster recovery, cloud computing and server virtualization.
EOT,
    'New Relic' => <<-EOT
<a href="http://www.newrelic.com/RPM.html" target="_blank">New Relic RPM</a> is a Ruby on Rails Performance Management solution that enables developers to quickly and cost effectively detect, diagnose, and fix application performance problems in real time. <a href='http://www.newrelic.com'>www.NewRelic.com</a>
EOT
  }
  def content_sponsor(sponsor)
    contain(sponsor)
  end
end

World(SponsorsHelpers)
