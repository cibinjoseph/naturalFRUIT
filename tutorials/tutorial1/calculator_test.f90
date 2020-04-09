module calculator_test
  use naturalfruit
  implicit none
contains

  subroutine test_add()
    use calculator, only: add
    integer:: outValue

    ! Initialize this testcase
    call testcase_initialize('test_add')

    ! Check a set of arguments
    call add(2,2, outValue)
    call assert_equal(4, outValue)

    ! Check another set of arguments
    call add(0,6, outValue)
    call assert_equal(0, outValue)

    ! Finalize this testcase
    call testcase_finalize()
  end subroutine test_add

  subroutine test_multiply()
    use calculator, only: multiply
    integer:: outValue

    ! Initialize this testcase
    call testcase_initialize('test_add')

    ! Check a set of arguments
    call multiply(23,2, outValue)
    call assert_equal(46, outValue)

    ! Check another set of arguments
    call multiply(100,6, outValue)
    call assert_equal(600, outValue)

    ! Finalize this testcase
    call testcase_finalize()
  end subroutine test_multiply
end module calculator_test

