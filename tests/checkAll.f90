program checkAll
  use fruit
  implicit none

  integer, parameter :: nAsserts = 1
  logical, dimension(nAsserts) :: isCorrect
  
  print*, "Checking assert_equal"
  call assert_equal(.true., .true.)
  print*
  print*, "Completed checks"
end program checkAll
