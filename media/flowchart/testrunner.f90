program testrunner
  ! Program that drives tests
  use naturalfruit
  use myModule_test
  integer :: exitCode

  ! Initialize the testsuite environment
  call testsuite_initialize()

  ! Run the user-defined testcase
  call test_getvalue()

  ! Display a summary of test results
  call testsuite_summary()

  ! Wrap-up the testsuite environment
  call testsuite_finalize(exitCode)

  ! Exit the program with an exit code
  call exit(exitCode)

end program testrunner
