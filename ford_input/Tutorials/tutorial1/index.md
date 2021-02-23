title: Tutorial 1

## Using a module to organize testcases
For complex programs, placing your test cases in a seperate module allows better management and utilization of data between test cases.  
Let's take the following simple calculator module that simulates the integer add and multiply operators and perform unit tests on the defined functions.

```Fortran
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
    integer, intent(in) :: a, b
    integer, intent(out) :: output
    output = a * b
  end subroutine multiply

end module calculator
```

We create the following _test_ _module_ that performs unit tests on each of the functions defined in the source module. Let's call it `calculator_test.f90`.
```Fortran
module calculator_test
  use naturalfruit
  implicit none
contains

  subroutine add_test()
    use calculator, only: add
    integer:: result

    call testcase_initialize('add_test')
    call add(2, 2, result)            ! <--- Call function to be tested
    call assert_equals (4, result)    ! <--- A sample assert that returns true
    call assert_equals (4, result+1)  ! <--- A sample assert that returns false
    call testcase_finalize()

  end subroutine add_test

  subroutine multiply_test()
    use calculator, only: multiply
    integer :: result

    call testcase_initialize('multiply_test')
    call multiply(3, 4, result)                          ! <--- Call function to be tested
    call assert_equals(12, result, 'Multiply failed')    ! <--- A sample assert that returns true
    call assert_equals(12, result+1, 'Multiply failed')  ! <--- A sample assert that returns false
    call testcase_finalize()

  end subroutine multiply_test

end module calculator_test
```

We've now created two subroutines that test the `add` and `multiply` functions from the module `calculator`. Note that each test subroutine starts with a `testcase_initialize` and ends with a `testcase_finalize` subroutine call. These are required for bookkeeping and proper initialization of internal variables.

To run these test cases, we create a _test_ _runner_ program. The test runner decides which test cases to run, in what order and acts as the frontend to interacting with the test cases helping provide result summaries of all test cases executed. Let us name our test runner `calculator_testrunner.f90`.

```Fortran
program calculator_testrunner
  use naturalfruit
  use calculator_test
  integer :: exit_code
 
  call testsuite_initialize()

  call add_test()
  call multiply_test()

  call testsuite_summary()
  call testsuite_finalize(exit_code)
  call exit(exit_code)

end program calculator_testrunner
```

Notice how the  _initialize_-_test_-_finalize_ workflow is used here just like in the test module.  
The subroutine names in the testrunner program start with the word 'testsuite' similar to how those in the test cases start with 'testcase'. Multiple such testsuites may be containd within a single testrunner program. This form of testing will be demonstrated in the next tutorial.

</br>
<center>
[Prev Tutorial](../tutorial0/index.html)
`----------------------------------------`
[Next Tutorial](../tutorial2/index.html)
</center>
