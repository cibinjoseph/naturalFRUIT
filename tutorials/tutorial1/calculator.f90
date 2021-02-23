module calculator
  implicit none
contains

  subroutine add(a, b, output)
    !! A subroutine to add two integers
    integer, intent (in) :: a, b
    integer, intent (out) :: output
    output = a + b
  end subroutine add

  subroutine multiply(a, b, output)
    !! A subroutine to multiply two integers
    integer, intent (in) :: a, b
    integer, intent (out) :: output
    output = a * b
  end subroutine multiply

end module calculator
