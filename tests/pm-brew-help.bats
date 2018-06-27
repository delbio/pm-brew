#!/usr/bin/env bats

load test_helper

@test "without args, show help for root pm-brew command" {
  run pm-brew-help

  assert_success

  assert_line "Usage: pm-brew <command> [<args>]"
}

@test "shows help for a specific command" {
  cat > "${PM_BREW_TMP_BIN}/pm-brew-hello" <<SH
#!shebang
# Usage: pm-brew hello <world>
# Summary: Says "hello" to you
# This command is useful for saying hello.
echo hello
SH

  run pm-brew-help hello

  assert_success
  assert_output <<SH
Usage: pm-brew hello <world>

This command is useful for saying hello.
SH
}
