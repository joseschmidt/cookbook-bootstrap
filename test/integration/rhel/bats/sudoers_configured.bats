#!/usr/bin/env bats

@test "/etc/sudoers is configured" {
  run grep "PATH SSH_AUTH_SOCK" /etc/sudoers
  [ "$status" -eq 0 ]
}

@test "/etc/sudoers.d/jeeves is configured" {
  run grep "^jeeves\s.*NOPASSWD:ALL$" /etc/sudoers.d/jeeves
  [ "$status" -eq 0 ]
}
