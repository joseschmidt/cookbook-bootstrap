#!/usr/bin/env bats

@test "man binary is found in PATH" {
  run which man
  [ "$status" -eq 0 ]
}

@test "nano binary is found in PATH" {
  run which nano
  [ "$status" -eq 0 ]
}

@test "wget binary is found in PATH" {
  run which wget
  [ "$status" -eq 0 ]
}

@test "which binary is found in PATH" {
  run which which
  [ "$status" -eq 0 ]
}
