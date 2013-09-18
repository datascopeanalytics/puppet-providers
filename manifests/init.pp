class providers {

  # include stages here so that we can define everything to occur
  # before the usual Stage['main']
  include providers::stages

  # # is this even needed?
  # class { "providers::update":
  #   stage => "update",
  # }

  # install all of these software installation providers
  class { [ "providers::pip", "providers::gem", "providers::tools",
            "providers::version_control" ]:
    stage => "pre-main",
  }
  
}
