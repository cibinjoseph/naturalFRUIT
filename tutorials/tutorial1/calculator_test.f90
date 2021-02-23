module calculator_test
  use naturalfruit
  implicit none
contains                          

  subroutine add_test()
    use calculator, only: add
    integer :: result

    call testcase_initialize('add_test')
    call add (2,2,result)
    call assert_equals (4, result)
    call assert_equals (3, 3)
    call testcase_finalize()

  end subroutine add_test

  subroutine multiply_test()
    use calculator, only: multiply
    integer :: result

    call testcase_initialize('multiply_test')
    call multiply(3, 4, result)
    call assert_equals(12, result, 'Multiply failed')
    call assert_equals(6, 6, 'Multiply failed')
    call testcase_finalize()

  end subroutine multiply_test

end module calculator_test

