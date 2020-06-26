program matmul_test
  use naturalfruit

  integer, dimension(2, 2) :: a, b
  integer, dimension(2, 2) :: expectedMat, obtainedMat
  integer :: exit_code                                    ! <--- Declare exit_code

  call testsuite_initialize()                             ! <--- Initialize testsuite

  a(1, :) = (/1, 2/)
  a(2, :) = (/3, 4/)

  b(1, :) = (/5, 6/)
  b(2, :) = (/7, 8/)

  expectedMat(1, :) = (/19, 22/)
  expectedMat(2, :) = (/43, 50/)

  obtainedMat = matmul(a, b)

  call assert_equal(expectedMat, obtainedMat, 'Fail 1')   ! <--- Assert statement
  call assert_equal(expectedMat, obtainedMat+1, 'Fail 2') ! <--- Assert statement
  call testsuite_summary()                                ! <--- Print results summary

  call testsuite_finalize(exit_code)                      ! <--- Finalize testsuite
  call exit(exit_code)                                    ! <--- Exit using exit_code

end program matmul_test
