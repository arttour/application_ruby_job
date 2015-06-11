name             'application_ruby_jobs'
maintainer       'David Watts'
maintainer_email 'dwatts@arttour.com'
license          'All rights reserved'
description      'Installs/Configures application_ruby_jobs'
long_description 'Installs/Configures application_ruby_jobs'

version          '0.1.0'

depends "build-essential"
depends "application", "~> 4.0"
depends "application_just_ruby", "~> 0.0.1"
depends "application_procfile"
depends "ruby_build"
depends "logrotate", "~> 1.0"