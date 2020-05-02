title: Documentation

# naturalFRUIT
</br>
(If you are already familiar with the basic concepts of testing, you might want to skip to the list of [assert methods](https://cibinjoseph.github.io/naturalFRUIT/page/AssertMethods/index.html) or to the list of [all available procedures](https://cibinjoseph.github.io/naturalFRUIT/lists/procedures.html).)</br></br>

naturalFRUIT is a unit testing framework for Fortran programs adapted from [Fortran Unit Test Framework (FRUIT)](https://sourceforge.net/projects/fortranxunit) with a goal to be independant of other programming languages.</br>
Due to the lack of [reflection](https://en.wikipedia.org/wiki/Reflection_(computer_programming)) and [exception handling](https://en.wikipedia.org/wiki/Exception_handling) in Fortran, unit test frameworks tend to rely on other languages like Ruby to ensure flexibility and elegance. naturalFRUIT compromises this elegance for ease of use, quick set-up and learning without losing flexibility.</br></br>
naturalFRUIT was built with users of [JUnit](https://junit.org/) and python's [unittest](https://docs.python.org/3/library/unittest.html) packages in mind. Similar concepts are used in naturalFRUIT too:</br></br>

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

The following image illustrates the typical workflow and basic subroutines for unit testing using naturalFRUIT:</br></br>
<img src="|media|/flowchart/flowchart.png"/></br></br>


@warning
Documentation, tutorials and source code are under active development. Use cautiously.
