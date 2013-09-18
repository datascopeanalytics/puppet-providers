class providers::tools {
  package { ["build-essential", "make"]:
    ensure => installed,
  }
}
