#!/usr/bin/env bats

@test "man binary is found in PATH" {
  skip "This test is deprecated in favor of serverspec tests."
  run which man
  [ "$status" -eq 0 ]
}

@test "nano binary is found in PATH" {
  skip "This test is deprecated in favor of serverspec tests."
  run which nano
  [ "$status" -eq 0 ]
}

@test "wget binary is found in PATH" {
  skip "This test is deprecated in favor of serverspec tests."
  run which wget
  [ "$status" -eq 0 ]
}

@test "which binary is found in PATH" {
  skip "This test is deprecated in favor of serverspec tests."
  run which which
  [ "$status" -eq 0 ]
}

@test "/etc/sudoers is configured" {
  skip "This test is deprecated in favor of serverspec tests."
  run grep "PATH SSH_AUTH_SOCK" /etc/sudoers
  [ "$status" -eq 0 ]
}

@test "/etc/sudoers.d/jeeves is configured" {
  skip "This test is deprecated in favor of serverspec tests."
  run grep "^jeeves\s.*NOPASSWD:ALL$" /etc/sudoers.d/jeeves
  [ "$status" -eq 0 ]
}
