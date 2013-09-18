class providers::stages {

  stage { [ "update", "pre-main" ]: }
  Stage["update"] -> Stage["pre-main"] -> Stage["main"]

}
