program checkAll
  use fruit
  implicit none

  integer, parameter :: nAsserts = 2
  logical, dimension(nAsserts) :: stat
  
  print*, "Checking assert_equal"
  call assert_equal(.true., .true., status=stat(1))
  ! call assert_equal(.true., .false., status=stat(2))
  call assert_equal((/.true., .false./),(/.true., .true./), status=stat(2))
  print*, stat
  print*, "Completed checks"
end program checkAll
