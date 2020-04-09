program testAsserts
  !! A basic set of tests for assert methods
  use naturalfruit
  implicit none

  integer, parameter :: dp = kind(1.0d0)
  integer, parameter :: nAsserts = 15
  logical, dimension(nAsserts) :: stat_true

  logical, dimension(3) :: logi1 = (/.true., .false., .true./)
  logical, dimension(2, 3) :: logi2
  real, dimension(5) :: real1 = (/1.0, 2.0, 3.0, 5.0, 6.0/)
  real, dimension(2, 5) :: real2
  real(dp), dimension(5) :: doub1 = (/1.0_dp, 2.0_dp, 3.0_dp, 5.0_dp, 6.0_dp/)
  real(dp), dimension(2, 5) :: doub2
  complex :: comp0
  complex, dimension(2) :: comp1
  complex, dimension(3, 2) :: comp2
  complex(dp) :: compd0
  complex(dp), dimension(2) :: compd1
  complex(dp), dimension(3, 2) :: compd2

  ! Arbitrary intialization
  logi2(1, :) = logi1
  logi2(2, :) = .not. logi1

  real2(1, :) = real1
  real2(2, :) = real1 + 2.0

  doub2(1, :) = doub1
  doub2(2, :) = doub1 + 2.0_dp

  comp0 = cmplx(1.0, 2.0)
  comp1 = (/comp0, comp0/)
  comp2(1, :) = comp1
  comp2(2, :) = comp1
  comp2(3, :) = comp1

  compd0 = cmplx(1.0_dp, 2.0_dp, kind=dp)
  compd1 = (/compd0, compd0/)
  compd2(1, :) = compd1
  compd2(2, :) = compd1
  compd2(3, :) = compd1

  print*, "Checking assert_equal ..."

  ! -- Success cases --
  ! logical
  call assert_equal(.true., .true., status=stat_true(1))
  call assert_equal(logi1, logi1, status=stat_true(2))
  call assert_equal(logi2, logi2, status=stat_true(3))
  ! real
  call assert_equal(1.0, 1.0, status=stat_true(4))
  call assert_equal(real1, real1, status=stat_true(5))
  call assert_equal(real2, real2, status=stat_true(6))
  ! double
  call assert_equal(1.0_dp, 1.0_dp, status=stat_true(7))
  call assert_equal(doub1, doub1, status=stat_true(8))
  call assert_equal(doub2, doub2, status=stat_true(9))
  ! complex real
  call assert_equal(comp0, comp0, status=stat_true(10))
  call assert_equal(comp1, comp1, status=stat_true(11))
  call assert_equal(comp2, comp2, status=stat_true(12))
  ! complex double
  call assert_equal(compd0, compd0, status=stat_true(13))
  call assert_equal(compd1, compd1, status=stat_true(14))
  call assert_equal(compd2, compd2, status=stat_true(15))

  if (.not. all(stat_true)) then
    print*, stat_true
    error stop 'ERROR: All were not true'
  else
    print*, '- All cases passed'
  endif

end program testAsserts
