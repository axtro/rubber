namespace :rubber do

  namespace :unicorn do

    rubber.allow_optional_tasks(self)

    # serial_task can only be called after roles defined - not normally a problem, but
    # rubber auto-roles don't get defined till after all tasks are defined
    on :load do
      rubber.serial_task self, :serial_restart, :roles => :unicorn do
        run "/etc/init.d/unicorn restart"
      end
      rubber.serial_task self, :serial_reload, :roles => :unicorn do
        run "if ! ps ax | grep -v grep | grep -c unicorn_rails &> /dev/null; then /etc/init.d/unicorn start; else /etc/init.d/unicorn reload; fi"
      end
    end

    before "deploy:stop", "rubber:unicorn:stop"
    after "deploy:start", "rubber:unicorn:start"
    after "deploy:restart", "rubber:unicorn:reload"

    desc "Stops the unicorn web server"
    task :stop, :roles => :unicorn, :on_error => :continue do
      run "/etc/init.d/unicorn stop"
    end

    desc "Starts the unicorn web server"
    task :start, :roles => :unicorn do
      run "/etc/init.d/unicorn start"
    end

    desc "Restarts the unicorn web server"
    task :restart, :roles => :unicorn do
      serial_restart
    end

    desc "Reloads the unicorn web server"
    task :reload, :roles => :unicorn do
      serial_reload
    end

  end
end
