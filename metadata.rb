name             'pptpd_vpn'
maintainer       'Tomas Norre'
maintainer_email 'tomasnorre@gmail.com'
license          'All rights reserved'
description      'Installs/Configures raspberry_vpn'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'

%w{debian ubuntu}.each do |os|
  supports os
end
