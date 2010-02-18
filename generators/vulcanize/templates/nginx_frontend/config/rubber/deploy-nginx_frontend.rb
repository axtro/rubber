
namespace :rubber do

  namespace :nginx_frontend do
  
    rubber.allow_optional_tasks(self)

    after "rubber:install_packages", "rubber:nginx_frontend:custom_install"

    task :custom_install, :roles => :nginx_frontend do
      # install nginx from source
      ver = rubber_env.nginx_frontend_version
      rubber.run_script 'install_sphinx', <<-ENDSCRIPT
        # check if already installed
        if [ -x /usr/local/sbin/nginx ]
          then echo 'Found nginx on system'
          if /usr/local/sbin/nginx -v | grep 'nginx/#{ver}'
            then echo 'Nginx version matches, no further steps needed'
            exit 0
          fi
        fi

        echo 'Installing / Upgrading nginx #{ver}'
        TMPDIR=`mktemp -d` || exit 1
        cd $TMPDIR
        echo 'Downloading'
        wget -qN http://sysoev.ru/nginx/nginx-#{ver}.tar.gz
        echo 'Unpacking'
        tar xf nginx-#{ver}.tar.gz
        cd nginx-#{ver}
        ./configure \
          --with-http_ssl_module \
          --with-http_stub_status_module \
          --conf-path=/etc/nginx_frontend/nginx.conf \
          --error-log-path=/var/log/nginx_frontend/error.log \
          --pid-path=/var/run/nginx_frontend.pid \
          --lock-path=/var/lock/nginx_frontend.lock \
          --http-log-path=/var/log/nginx_frontend/access.log \
          --http-client-body-temp-path=/var/lib/nginx_frontend/body \
          --http-proxy-temp-path=/var/lib/nginx_frontend/proxy \
          --http-fastcgi-temp-path=/var/lib/nginx_frontend/fastcgi
        make
        make install
        cd ; rm -rf $TMPDIR
      ENDSCRIPT
    end

    # serial_task can only be called after roles defined - not normally a problem, but
    # rubber auto-roles don't get defined till after all tasks are defined
    on :load do
      rubber.serial_task self, :serial_restart, :roles => :nginx_frontend do
        run "/etc/init.d/nginx_frontend restart"
      end
      rubber.serial_task self, :serial_reload, :roles => :nginx_frontend do
        run "if ! ps ax | grep -v grep | grep -c nginx &> /dev/null; then /etc/init.d/nginx_frontend start; else /etc/init.d/nginx_frontend reload; fi"
      end
    end
    
    before "deploy:stop", "rubber:nginx_frontend:stop"
    after "deploy:start", "rubber:nginx_frontend:start"
    after "deploy:restart", "rubber:nginx_frontend:reload"
    
    desc "Stops the nginx web server"
    task :stop, :roles => :nginx_frontend, :on_error => :continue do
      run "/etc/init.d/nginx_frontend stop"
    end
    
    desc "Starts the nginx web server"
    task :start, :roles => :nginx_frontend do
      run "/etc/init.d/nginx_frontend start"
    end
    
    desc "Restarts the nginx web server"
    task :restart, :roles => :nginx_frontend do
      serial_restart
    end
  
    desc "Reloads the nginx web server"
    task :reload, :roles => :nginx_frontend do
      serial_reload
    end
  
  end

end
