module myModule_test
  ! Module containing testcases
  use naturalfruit
contains
  .
  .

  ! Testcase definition
  subroutine test_myValue()
    use myModule, only: getValue

    ! Initialize the testcase environment
    call testcase_initialize()

    ! Run the function to be tested
    testValue = getValue(a, b)

    ! Check using assert statement
    call assert_equal(expectedValue, testValue)

    ! Wrap-up the testcase environment
    call testcase_finalize()

  end subroutine test_myValue
  .
  .

end module myModule_test
