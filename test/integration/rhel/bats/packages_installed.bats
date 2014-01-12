#!/usr/bin/env bats

@test "man binary is found in PATH" {
  skip "This test is redundant and has been replaced by serverspec tests."
  run which man
  [ "$status" -eq 0 ]
}

@test "nano binary is found in PATH" {
  skip "This test is redundant and has been replaced by serverspec tests."
  run which nano
  [ "$status" -eq 0 ]
}

@test "wget binary is found in PATH" {
  skip "This test is redundant and has been replaced by serverspec tests."
  run which wget
  [ "$status" -eq 0 ]
}

@test "which binary is found in PATH" {
  skip "This test is redundant and has been replaced by serverspec tests."
  run which which
  [ "$status" -eq 0 ]
}
