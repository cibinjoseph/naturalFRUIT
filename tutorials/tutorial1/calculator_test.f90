! Copyright (c) 2005-2010, 2012-2013, Andrew Hang Chen and contributors,
! All rights reserved.
! Licensed under the 3-clause BSD license.

module calculator_test
  use fruit
  implicit none

contains                          !fortran 95 limits subroutine name to 31 char.
  subroutine test_calculator_should_produce_4_when_2_and_2_are_inputs
    use calculator, only: add
    integer:: result

    call add (2,2,result)
    call assert_equals (4, result)
  end subroutine test_calculator_should_produce_4_when_2_and_2_are_inputs
end module calculator_test

