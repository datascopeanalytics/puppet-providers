class providers::gem {
  package { ["gem", "rubygems", "libruby"]:
    ensure => installed,
  }
}
