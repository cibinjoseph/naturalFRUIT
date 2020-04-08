program checkAll
  ! ! A basic set of tests for assert methods
  use fruit
  implicit none

  integer, parameter :: nAsserts = 2
  logical, dimension(nAsserts) :: stat

  logical, dimension(3) :: logi1 = (/.true., .false., .true./)
  logical, dimension(2, 3) :: logi2
  real, dimension(5) :: real1 = (/1.0, 2.0, 3.0, 5.0, 6.0/)
  real, dimension(2, 5) :: real2
  double precision, dimension(5) :: doub1 = (/1.0d0, 2.0d0, 3.0d0, 5.0d0, 6.0d0/)
  double precision, dimension(2, 5) :: doub2
  complex(kind=kind(1.d0)) :: comp0
  complex(kind=kind(1.d0)), dimension(2) :: comp1
  complex(kind=kind(1.d0)), dimension(3, 2) :: comp2

  ! Arbitrary intialization
  logi2(1, :) = logi1
  logi2(2, :) = .not. logi1

  real2(1, :) = real1
  real2(2, :) = real1 + 2.0

  doub2(1, :) = doub1
  doub2(2, :) = doub1 + 2.0d0

  comp0 = cmplx(1.0d0, 2.0d0)
  comp1 = (/comp0, comp0/)
  comp2(1, :) = (/comp0, comp0/)
  comp2(2, :) = (/comp0, comp0/)
  comp2(3, :) = (/comp0, comp0/)

  print*, "Checking assert_equal ..."

  ! -- Success cases --
  ! logical
  call assert_equal(.true., .true., status=stat(1))
  call assert_equal(logi1, logi1, status=stat(2))
  call assert_equal(logi2, logi2, status=stat(3))
  ! real
  call assert_equal(1.0, 1.0, status=stat(4))
  call assert_equal(real1, real1, status=stat(5))
  call assert_equal(real2, real2, status=stat(6))
  ! double
  call assert_equal(1.0d0, 1.0d0, status=stat(7))
  call assert_equal(doub1, doub1, status=stat(8))
  call assert_equal(doub2, doub2, status=stat(9))
  ! complex
  call assert_equal(comp0, comp0, status=stat(10))
  call assert_equal(comp1, comp1, status=stat(11))
  call assert_equal(comp2, comp2, status=stat(12))

  if (.not. all(stat)) then
    print*, stat
    error stop 'ERROR: All were not true'
  else
    print*, '1. All cases passed'
  endif

end program checkAll
