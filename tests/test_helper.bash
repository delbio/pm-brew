load lib/assertions

export PM_BREW_TEST_DIR="${BATS_TMPDIR}/pm-brew"
export PM_BREW_TMP_BIN="${PM_BREW_TEST_DIR}/bin"
export PM_BREW_CWD="${PM_BREW_TEST_DIR}/cwd"

export PATH="${BATS_TEST_DIRNAME}/libexec:$PATH"
export PATH="${BATS_TEST_DIRNAME}/../libexec:$PATH"
export PATH="${PM_BREW_TMP_BIN}:$PATH"

mkdir -p "${PM_BREW_TMP_BIN}"
mkdir -p "${PM_BREW_TEST_DIR}"
mkdir -p "${PM_BREW_CWD}"

setup() {
  cd "${PM_BREW_CWD}"
}

teardown() {
  rm -rf "${PM_BREW_TEST_DIR}"
}
