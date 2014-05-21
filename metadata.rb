# encoding: utf-8
name             'apache2'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures apache2'
version          '0.1.0'
recipe           'apache2::default', 'Installs/configures apache2'

depends 'chef-sugar'
