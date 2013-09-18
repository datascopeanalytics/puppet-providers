class providers::pip {
  # make sure these system packages are installed before pip can be run  
  package { ["python-dev", "python-pip"]:
    ensure => installed,
  }
}
