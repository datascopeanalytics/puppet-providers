class providers::version_control {
  package { ["mercurial", "git"]:
    ensure => installed, 
  }
}
