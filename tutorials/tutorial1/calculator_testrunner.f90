program calculator_testrunner
  use naturalfruit
  use calculator_test
  integer :: exit_code

  ! Initialize the testsuite
  call testsuite_initialize()

  ! Run a testcase
  call test_add()

  ! Run a testcase
  call test_multiply()

  ! Print a summary of the test results
  call testsuite_summary()

  ! Wrap up the testsuite
  call testsuite_finalize(exit_code)
  call exit(exit_code)
end program calculator_testrunner
