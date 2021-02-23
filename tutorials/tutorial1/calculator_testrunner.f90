program calculator_testrunner
  use naturalfruit
  use calculator_test
  integer :: exit_code

  call testsuite_initialize()

  call add_test()
  call multiply_test()

  call testsuite_summary()
  call testsuite_finalize(exit_code)
  call exit(exit_code)

end program calculator_testrunner
