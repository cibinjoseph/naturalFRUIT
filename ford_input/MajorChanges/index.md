title: Major changes

The following are the major changes incorporated in naturalFRUIT with regard to FRUIT. This list is helpful if you are already familiar with FRUIT or are trying to port your testing framework to naturalFRUIT from FRUIT.

1. **Single module**: FRUIT consisted of two modules packaged into a single file. Now, the `fruit_util` module has been removed and necessary subroutines have been included inside the `[[naturalfruit]]` module contained in the file `naturalfruit.f90`.</br></br>
2. **Deprecated procedures**: A few procedures have been replaced to maintain consistency in naming convention. Refer the page [Deprecated Methods](https://cibinjoseph.github.io/naturalFRUIT/page/DeprecatedProcedures/index.html) in the documentation for more details.</br></br>
3. **Status specifier**: All assert subroutines now accept a `status` specifier that suppresses general test case behaviour like printing of success or failure messages. The boolean variable provided to the specifier returns `.true.` or `.false.` depending on assert success or failure. This allows standalone calls of the assert methods without defining a test case environment.</br></br>
4. **Exception handling**: A primitive type of exception handling is incorporated in naturalFRUIT by returning the number of failed cases as an exit code. This may be used in testing using continous integration frameworks like Travis.</br></br>
5. **Test suite functionality**: The test suite functionality has been revamped to an *intialize*-*finalize* workflow for both testsuites and testcases. The methods are named similar to those used by popular unit testing framework in other languages like python and jUnit. This also avoids pointers to testcase methods and better brevity.</br></br>

