! Copyright (c) 2005-2010, 2012-2013, Andrew Hang Chen and contributors,
! All rights reserved.
! Licensed under the 3-clause BSD license.

program fruit_driver
  use fruit
  use calculator_test
  call init_fruit                  !in f95, subroutine name limited to 31 characters
  call test_calculator_should_produce_4_when_2_and_2_are_inputs
  call fruit_summary
  call fruit_finalize
end program fruit_driver
