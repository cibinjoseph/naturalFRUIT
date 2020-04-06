! Copyright (c) 2005-2010, 2012-2013, Andrew Hang Chen and contributors,
! All rights reserved.
! Licensed under the 3-clause BSD license.

module calculator
  implicit none
contains
  subroutine add (a, b, output)
    integer, intent (in) :: a, b
    integer, intent (out) :: output

    output = a + b
  end subroutine add
end module calculator
