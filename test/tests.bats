setup() {
  load 'test_helper/bats-support/load.bash'
  load 'test_helper/bats-assert/load.bash'
  load 'test_helper/bats-file/load.bash'
  PROJECT_ROOT="$(cd "${BATS_TEST_DIRNAME}/.." > /dev/null 2>&1 && pwd)"
  PATH="${PROJECT_ROOT}/src:${PATH}"
}

@test "test for loop" {
  run for_sample
  assert_output "-0-1-2"
}

@test "test while loop" {
  run while_sample
  assert_output "-1-2-3-1-2-3"
}
