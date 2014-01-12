#!/usr/bin/env bats

@test "/etc/sudoers is configured" {
  skip "This test is redundant and has been replaced by serverspec tests."
  run grep "PATH SSH_AUTH_SOCK" /etc/sudoers
  [ "$status" -eq 0 ]
}

@test "/etc/sudoers.d/jeeves is configured" {
  skip "This test is redundant and has been replaced by serverspec tests."
  run grep "^jeeves\s.*NOPASSWD:ALL$" /etc/sudoers.d/jeeves
  [ "$status" -eq 0 ]
}
