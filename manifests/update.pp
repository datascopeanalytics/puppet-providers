class providers::update {

  # run apt-get update before anything else is done in subsequent
  # manifests to make sure that all of the sources.list files are up to
  # date on ubuntu server. only run this if any of the puppet manifest
  # files are more up to date than the apt cache
  # http://serverfault.com/a/505341/127012
  exec {"apt-get update":
    onlyif  => 'test $(find /vagrant/puppet/ -name "*.pp" -printf \'%T@ %p\n\' | awk \'{if($1>a)a=$1}END{print int(a)}\') -gt $(find /var/cache/apt/ -type f -printf \'%T@ %p\n\' | awk \'{if($1>a)a=$1}END{print int(a)}\')',
    path    => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ],
  }
}
