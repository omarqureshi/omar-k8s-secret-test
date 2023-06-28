listen 8080 # by default Unicorn listens on port 8080
worker_processes 1 # this should be >= nr_cpus
pid "/var/task/shared/pids/unicorn.pid"
#stderr_path "/path/to/app/shared/log/unicorn.log"
#stdout_path "/path/to/app/shared/log/unicorn.log"
