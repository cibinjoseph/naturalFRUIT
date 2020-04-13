title: Tutorials

Before we dive into unit testing using naturalFRUIT, here are a few concepts that we will be using throughout the tutorials. A basic idea of these should be sufficient to breeze through the tutorials.</br>

- *assert statements*</br>
  The assert statement is the fundamental building block for unit testing in naturalFRUIT. *Everything else is just decoration*.</br> 
  The assert statement acccepts two arguments- an *expected* value and a *test* value. Once the *test* value is obtained from the function being tested, the assert statement compares it against the *expected* value. If they match, the assert is a succes, implying the function works as expected. If not, the assert is deemed a failure and the test function is assumed to not work as expected.

- *test case*</br>
  A test case is the individual unit of testing. It checks for a specific response to a particular set of inputs by using one or more assert statements. Success of all asserts inside a test case implies the test case is successful. Typically, each subroutine/function in a module is tested using a dedicated test case.

- *test suite*</br>
  A test suite is a collection of test cases, test suites, or both. It is used to aggregate tests that should be executed together. In naturalFRUIT, the test cases contained in a test suite are defined together as subroutines of a module.

- *test fixture*</br>
  A test fixture represents the preparation needed to perform one or more tests, and any associated cleanup actions. This may involve, for example, allocating variables, creating temporary directories or initializing data sets for testing.</br>

- *test runner*</br>
  A test runner is the component which orchestrates the execution of tests and provides the outcome to the user. For naturalFRUIT, a separate Fortran program performs the duties of a test runner. This test runner program invokes testcases from the test suite module.</br></br>

### Contents:
0. [**Tutorial 0**](./tutorial0/index.html):</br>
  Basic tutorial that introduces the assert subroutine.

1. [**Tutorial 1**](./tutorial1/index.html):</br>
  Basic tutorial that introduces assert subroutines and testrunner.

2. [**Tutorial 2**](./tutorial2/index.html): </br>
  Tutorial that introduces testcases and testrunner.

