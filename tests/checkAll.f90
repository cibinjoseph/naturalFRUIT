program checkAll
  use fruit
  implicit none

  integer, parameter :: nAsserts = 2
  logical, dimension(nAsserts) :: stat
  
  print*, "Checking assert_equal"
  call assert_equal(.true., .true.)
  call assert_equal((/.true., .true./),(/.true., .true./))
  ! print*, stat
  print*, "Completed checks"
end program checkAll
