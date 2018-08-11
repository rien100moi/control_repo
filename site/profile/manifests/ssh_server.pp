class profile::ssh_server {
        package { 'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user => 'root',
                type => 'id-rsa',
                key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDh5WfuX+kWt4An8roUPXIFdJdegB1EqreOm8Pe02ryqomgk8s3WCJYlfkNoIC4++b0VsJ2w0SJkOVGUw+plHVLtm9aWyyyLtje0YUoWMFu/VWxT1q/uhxtR9meo9w6OPDAdRNe1a4TO1YX+2o3xun+/HK9EeS9zulz3bFSt4TpN/zTczPgM4208siATLzoZriIrM25Qq51M1GN4jPrsifPK7a616jUiL7eiqxJzIVkA/EKobrnoC7bxWYF/6ySzUuFoWAyOlGi0uuISTiKDRHvgOjcpCSefkrMJN+Ys0tuzCPrZoxn70r9/01UXb2VmdH4pargQcnmZMTElILzKuf7',
}
