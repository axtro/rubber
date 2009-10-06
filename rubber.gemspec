# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{axtro-rubber}
  s.version = "1.0.2.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Conway"]
  s.date = %q{2009-10-01}
  s.default_executable = %q{vulcanize}
  s.description = %q{The rubber plugin enables relatively complex multi-instance deployments of RubyOnRails applications to Amazon's Elastic Compute Cloud (EC2).  Like capistrano, rubber is role based, so you can define a set of configuration files for a role and then assign that role to as many concrete instances as needed. One can also assign multiple roles to a single instance. This lets one start out with a single ec2 instance (belonging to all roles), and add new instances into the mix as needed to scale specific facets of your deployment, e.g. adding in instances that serve only as an 'app' role to handle increased app server load.}
  s.email = %q{matt@conwaysplace.com}
  s.executables = ["vulcanize"]
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "CHANGELOG",
     "COPYING",
     "README",
     "TODO",
     "VERSION",
     "bin/vulcanize",
     "generators/vulcanize/USAGE",
     "generators/vulcanize/templates/apache/config/rubber/deploy-apache.rb",
     "generators/vulcanize/templates/apache/config/rubber/role/apache/deflate.conf",
     "generators/vulcanize/templates/apache/config/rubber/role/apache/expires.conf",
     "generators/vulcanize/templates/apache/config/rubber/role/apache/headers.conf",
     "generators/vulcanize/templates/apache/config/rubber/role/apache/monit-apache.conf",
     "generators/vulcanize/templates/apache/config/rubber/role/apache/ports.conf",
     "generators/vulcanize/templates/apache/config/rubber/role/apache/setenvif.conf",
     "generators/vulcanize/templates/apache/config/rubber/role/web_tools/tools-apache-vhost.conf",
     "generators/vulcanize/templates/apache/config/rubber/role/web_tools/tools-apache.auth",
     "generators/vulcanize/templates/apache/config/rubber/role/web_tools/tools-index.html",
     "generators/vulcanize/templates/apache/config/rubber/rubber-apache.yml",
     "generators/vulcanize/templates/apache/templates.yml",
     "generators/vulcanize/templates/base/Capfile",
     "generators/vulcanize/templates/base/config/deploy.rb",
     "generators/vulcanize/templates/base/config/rubber/common/crontab",
     "generators/vulcanize/templates/base/config/rubber/common/profile.rc",
     "generators/vulcanize/templates/base/config/rubber/deploy-setup.rb",
     "generators/vulcanize/templates/base/config/rubber/rubber.yml",
     "generators/vulcanize/templates/base/lib/tasks/rubber.rake",
     "generators/vulcanize/templates/base/script/cron-rake",
     "generators/vulcanize/templates/base/script/cron-runner",
     "generators/vulcanize/templates/base/script/cron-sh",
     "generators/vulcanize/templates/base/templates.yml",
     "generators/vulcanize/templates/complete_mongrel_mysql/config/rubber/role/haproxy/haproxy-mongrel.conf",
     "generators/vulcanize/templates/complete_mongrel_mysql/config/rubber/role/nginx/nginx-mongrel.conf",
     "generators/vulcanize/templates/complete_mongrel_mysql/config/rubber/rubber-complete.yml",
     "generators/vulcanize/templates/complete_mongrel_mysql/templates.yml",
     "generators/vulcanize/templates/complete_passenger_mysql/config/rubber/role/haproxy/haproxy-passenger.conf",
     "generators/vulcanize/templates/complete_passenger_mysql/config/rubber/rubber-complete.yml",
     "generators/vulcanize/templates/complete_passenger_mysql/templates.yml",
     "generators/vulcanize/templates/cruise/config/rubber/deploy-cruise.rb",
     "generators/vulcanize/templates/cruise/config/rubber/role/cruise/cruise",
     "generators/vulcanize/templates/cruise/config/rubber/role/cruise/my.cnf",
     "generators/vulcanize/templates/cruise/config/rubber/role/cruise/production.rb",
     "generators/vulcanize/templates/cruise/config/rubber/role/cruise/site_config.rb",
     "generators/vulcanize/templates/cruise/config/rubber/role/web_tools/cruise-nginx.conf",
     "generators/vulcanize/templates/cruise/config/rubber/rubber-cruise.yml",
     "generators/vulcanize/templates/cruise/templates.yml",
     "generators/vulcanize/templates/haproxy/config/rubber/deploy-haproxy.rb",
     "generators/vulcanize/templates/haproxy/config/rubber/role/haproxy/haproxy-base.conf",
     "generators/vulcanize/templates/haproxy/config/rubber/role/haproxy/haproxy-default.conf",
     "generators/vulcanize/templates/haproxy/config/rubber/role/haproxy/monit-haproxy.conf",
     "generators/vulcanize/templates/haproxy/config/rubber/role/haproxy/syslog-haproxy.conf",
     "generators/vulcanize/templates/haproxy/config/rubber/role/haproxy/syslogd-default.conf",
     "generators/vulcanize/templates/haproxy/config/rubber/role/web_tools/haproxy-nginx.conf",
     "generators/vulcanize/templates/haproxy/config/rubber/rubber-haproxy.yml",
     "generators/vulcanize/templates/haproxy/templates.yml",
     "generators/vulcanize/templates/memcached/config/memcached.yml",
     "generators/vulcanize/templates/memcached/config/rubber/common/memcached.yml",
     "generators/vulcanize/templates/memcached/config/rubber/role/memcached/memcached.conf",
     "generators/vulcanize/templates/memcached/config/rubber/role/memcached/memcached_munin_plugin",
     "generators/vulcanize/templates/memcached/config/rubber/rubber-memcached.yml",
     "generators/vulcanize/templates/memcached/templates.yml",
     "generators/vulcanize/templates/minimal_mysql/templates.yml",
     "generators/vulcanize/templates/minimal_nodb/templates.yml",
     "generators/vulcanize/templates/mongrel/config/rubber/deploy-mongrel.rb",
     "generators/vulcanize/templates/mongrel/config/rubber/role/mongrel/mongrel_cluster.yml",
     "generators/vulcanize/templates/mongrel/config/rubber/role/mongrel/monit-mongrel.conf",
     "generators/vulcanize/templates/mongrel/config/rubber/rubber-mongrel.yml",
     "generators/vulcanize/templates/mongrel/templates.yml",
     "generators/vulcanize/templates/monit/config/rubber/common/monit-default.conf",
     "generators/vulcanize/templates/monit/config/rubber/common/monit.conf",
     "generators/vulcanize/templates/monit/config/rubber/deploy-monit.rb",
     "generators/vulcanize/templates/monit/config/rubber/role/web_tools/monit-admin-nginx.conf",
     "generators/vulcanize/templates/monit/config/rubber/rubber-monit.yml",
     "generators/vulcanize/templates/monit/templates.yml",
     "generators/vulcanize/templates/munin/config/rubber/common/monit-munin.conf",
     "generators/vulcanize/templates/munin/config/rubber/common/munin-node.conf",
     "generators/vulcanize/templates/munin/config/rubber/deploy-munin.rb",
     "generators/vulcanize/templates/munin/config/rubber/role/web_tools/munin-nginx.conf",
     "generators/vulcanize/templates/munin/config/rubber/role/web_tools/munin-plugins.conf",
     "generators/vulcanize/templates/munin/config/rubber/role/web_tools/munin.conf",
     "generators/vulcanize/templates/munin/config/rubber/rubber-munin.yml",
     "generators/vulcanize/templates/munin/script/munin/example_mysql_query.rb",
     "generators/vulcanize/templates/munin/script/munin/example_simple.rb",
     "generators/vulcanize/templates/munin/templates.yml",
     "generators/vulcanize/templates/mysql/config/rubber/common/database.yml",
     "generators/vulcanize/templates/mysql/config/rubber/deploy-mysql.rb",
     "generators/vulcanize/templates/mysql/config/rubber/role/db/crontab",
     "generators/vulcanize/templates/mysql/config/rubber/role/db/monit-mysql.cnf",
     "generators/vulcanize/templates/mysql/config/rubber/role/db/my.cnf",
     "generators/vulcanize/templates/mysql/config/rubber/role/mysql_slave/mysql_slave_munin_plugin",
     "generators/vulcanize/templates/mysql/config/rubber/rubber-mysql.yml",
     "generators/vulcanize/templates/mysql/templates.yml",
     "generators/vulcanize/templates/mysql_cluster/config/rubber/common/mysql_cluster_migrations.rb",
     "generators/vulcanize/templates/mysql_cluster/config/rubber/deploy-mysql_cluster.rb",
     "generators/vulcanize/templates/mysql_cluster/config/rubber/role/mysql_data/my.cnf",
     "generators/vulcanize/templates/mysql_cluster/config/rubber/role/mysql_mgm/ndb_mgmd.cnf",
     "generators/vulcanize/templates/mysql_cluster/config/rubber/role/mysql_sql/monit-mysql_cluster_sql.cnf",
     "generators/vulcanize/templates/mysql_cluster/config/rubber/role/mysql_sql/my.cnf",
     "generators/vulcanize/templates/mysql_cluster/config/rubber/rubber-mysql_cluster.yml",
     "generators/vulcanize/templates/mysql_cluster/templates.yml",
     "generators/vulcanize/templates/mysql_proxy/config/rubber/common/database.yml",
     "generators/vulcanize/templates/mysql_proxy/config/rubber/common/monit-mysql_proxy.cnf",
     "generators/vulcanize/templates/mysql_proxy/config/rubber/common/mysql-proxy",
     "generators/vulcanize/templates/mysql_proxy/config/rubber/common/mysql-proxy.conf",
     "generators/vulcanize/templates/mysql_proxy/config/rubber/common/mysql-proxy.lua",
     "generators/vulcanize/templates/mysql_proxy/config/rubber/deploy-mysql_proxy.rb",
     "generators/vulcanize/templates/mysql_proxy/config/rubber/rubber-mysql_proxy.yml",
     "generators/vulcanize/templates/mysql_proxy/templates.yml",
     "generators/vulcanize/templates/nginx/config/rubber/deploy-nginx.rb",
     "generators/vulcanize/templates/nginx/config/rubber/role/nginx/crontab",
     "generators/vulcanize/templates/nginx/config/rubber/role/nginx/monit-nginx.conf",
     "generators/vulcanize/templates/nginx/config/rubber/role/nginx/nginx.conf",
     "generators/vulcanize/templates/nginx/config/rubber/role/web_tools/nginx-tools.conf",
     "generators/vulcanize/templates/nginx/config/rubber/role/web_tools/tools-index.html",
     "generators/vulcanize/templates/nginx/config/rubber/role/web_tools/tools-nginx.auth",
     "generators/vulcanize/templates/nginx/config/rubber/rubber-nginx.yml",
     "generators/vulcanize/templates/nginx/templates.yml",
     "generators/vulcanize/templates/passenger/config/rubber/deploy-passenger.rb",
     "generators/vulcanize/templates/passenger/config/rubber/role/passenger/munin-passenger-sudoers.conf",
     "generators/vulcanize/templates/passenger/config/rubber/role/passenger/munin-passenger.conf",
     "generators/vulcanize/templates/passenger/config/rubber/role/passenger/passenger-apache-vhost.conf",
     "generators/vulcanize/templates/passenger/config/rubber/role/passenger/passenger.conf",
     "generators/vulcanize/templates/passenger/config/rubber/rubber-passenger.yml",
     "generators/vulcanize/templates/passenger/templates.yml",
     "generators/vulcanize/templates/sphinx/config/rubber/common/sphinx.yml",
     "generators/vulcanize/templates/sphinx/config/rubber/deploy-sphinx.rb",
     "generators/vulcanize/templates/sphinx/config/rubber/role/sphinx/crontab",
     "generators/vulcanize/templates/sphinx/config/rubber/role/sphinx/monit-sphinx.conf",
     "generators/vulcanize/templates/sphinx/config/rubber/rubber-sphinx.yml",
     "generators/vulcanize/templates/sphinx/templates.yml",
     "generators/vulcanize/vulcanize_generator.rb",
     "lib/capistrano/hostcmd.rb",
     "lib/rubber.rb",
     "lib/rubber/capistrano.rb",
     "lib/rubber/cloud.rb",
     "lib/rubber/cloud/aws.rb",
     "lib/rubber/cloud/base.rb",
     "lib/rubber/configuration.rb",
     "lib/rubber/dns.rb",
     "lib/rubber/dns/base.rb",
     "lib/rubber/dns/dyndns.rb",
     "lib/rubber/dns/nettica.rb",
     "lib/rubber/dns/zerigo.rb",
     "lib/rubber/environment.rb",
     "lib/rubber/generator.rb",
     "lib/rubber/instance.rb",
     "lib/rubber/recipes/rubber.rb",
     "lib/rubber/recipes/rubber/bundles.rb",
     "lib/rubber/recipes/rubber/deploy.rb",
     "lib/rubber/recipes/rubber/instances.rb",
     "lib/rubber/recipes/rubber/load_balancers.rb",
     "lib/rubber/recipes/rubber/security_groups.rb",
     "lib/rubber/recipes/rubber/setup.rb",
     "lib/rubber/recipes/rubber/static_ips.rb",
     "lib/rubber/recipes/rubber/utils.rb",
     "lib/rubber/recipes/rubber/volumes.rb",
     "lib/rubber/tasks/rubber.rb",
     "lib/rubber/util.rb"
  ]
  s.homepage = %q{http://github.com/wr0ngway/rubber}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rubber}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{A capistrano plugin for managing multi-instance deployments to the cloud (ec2)}
  s.test_files = [
    "test/environment_test.rb",
     "test/generator_test.rb",
     "test/instance_test.rb",
     "test/test_helper.rb",
     "test/util_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, [">= 0"])
      s.add_runtime_dependency(%q<amazon-ec2>, [">= 0.5.0"])
      s.add_runtime_dependency(%q<aws-s3>, [">= 0"])
      s.add_runtime_dependency(%q<nettica>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_runtime_dependency(%q<rails>, [">= 0"])
    else
      s.add_dependency(%q<capistrano>, [">= 0"])
      s.add_dependency(%q<amazon-ec2>, [">= 0.5.0"])
      s.add_dependency(%q<aws-s3>, [">= 0"])
      s.add_dependency(%q<nettica>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>, [">= 0"])
    s.add_dependency(%q<amazon-ec2>, [">= 0.5.0"])
    s.add_dependency(%q<aws-s3>, [">= 0"])
    s.add_dependency(%q<nettica>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 0"])
  end
end
