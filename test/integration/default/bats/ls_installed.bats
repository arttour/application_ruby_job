#!/usr/bin/env bats

@test "ls binary is found in PATH" {
  run which ls
  [ "$status" -eq 0 ]
}