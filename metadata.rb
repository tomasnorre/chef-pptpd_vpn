name 'pptpd_vpn'
maintainer 'Tomas Norre Mikkelsen'
maintainer_email 'tomasnorre@gmail.com'
license 'All rights reserved'
description 'Installs/Configures pptpd_vpn'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.0'

%w(debian ubuntu).each do |os|
  supports os
end
