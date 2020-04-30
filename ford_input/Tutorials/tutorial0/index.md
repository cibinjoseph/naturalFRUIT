title: Tutorial 0

## Testing the `matmul` intrinsic function
In order to understand the basic workflow of unit testing, let's try verifying the `matmul` intrinsic function that performs matrix multiplication in Fortran.</br></br>
Let's start with integer multiplication for *2 x 2* matrices.</br>
We shall take two example matrices and use the [[assert_equal]] statement to compare the expected matrix result with the one `matmul` outputs.</br>
Let's also deliberately add a wrong case that results in a failed assert statement.</br>
```Fortran
program matmul_test
  use naturalfruit

  integer, dimension(2, 2) :: a, b
  integer, dimension(2, 2) :: expectedMat, obtainedMat

  a(1, :) = (/1, 2/)
  a(2, :) = (/3, 4/)

  b(1, :) = (/5, 6/)
  b(2, :) = (/7, 8/)

  expectedMat(1, :) = (/19, 22/)
  expectedMat(2, :) = (/43, 50/)

  obtainedMat = matmul(a, b)

  call assert_equal(expectedMat, obtainedMat)   ! <--- Assert statement
  call assert_equal(expectedMat, obtainedMat+1) ! <--- Assert statement

end program matmul_test
```
</br>
Ensure the module `naturalfruit.f90` is available for use and available for linking. Our example program may then be compiled and executed using:
```
$ gfortran -c naturalfruit.f90
$ gfortran matmul_test.f90 naturalfruit.o
$ ./a.out
```
Executing this program will print a `.F` to the screen. The `.` indicates a successful assert while the `F` a failed assert. This is a concise indication common to other testing frameworks too. </br>
For a clearer outline of the results, we leverage nauralFRUIT's [[testsuite_summary]] method. We shall also supply [[assert_equal]] an optional `message` argument to print out a message in case of a failed assert. This would allow us to better identify the failed assert.
Making these changes in the program, </br>
```Fortran
program matmul_test
  use naturalfruit

  integer, dimension(2, 2) :: a, b
  integer, dimension(2, 2) :: expectedMat, obtainedMat

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

end program matmul_test
```

and executing it will provide:

```Bash
.F

     Start of FRUIT summary:

 Some tests failed!

   -- Failed assertion messages:
   [_not_set_]: Expected [19], Got [20]; User message: [2d array has difference, Fail 2]
   -- end of failed assertion messages.

 Total asserts :              2
 Successful    :              1
 Failed        :              1
Successful rate:    50.00%

 Successful asserts / total asserts : [            1 /           2  ]
 Successful cases   / total cases   : [            0 /           1  ]
   -- end of FRUIT summary

```
Although naturalFRUIT is currently working with set defaults, it requires to be properly initialized to prevent unexpected beahviour. For this, we shall utilize the `testsuite_initialize` and the `testsuite_finalize` statements. We will also provide an optional integer argument `exit_code` to `testsuite_finalize` to obtain an exit code for our test program. This will indicate whether program as a whole was successfully executed and be helpful when integrating with other frameworks including those with continuous integration testing capabilities.

```Fortran
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
```
We have now realized the bare minimum to perform unit testing with naturalFRUIT. </br>
This program may be easily extended to testing  other data types like `real` and `real*8` too. </br>
However, for maintaining a testsuite with a large number of complex testcases, we cannot rely only on a simple testrunner program like the above. A better organization of things is essential. Continue to the next tutorial to find how this may be achieved.</br></br>
<center>[Next Tutorial](../tutorial1/index.html)</center>
