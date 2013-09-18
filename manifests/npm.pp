class providers::npm {
  package { ["nodejs", "npm" ]:
    ensure => installed,
  }
}
