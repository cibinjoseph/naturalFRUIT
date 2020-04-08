title: Major changes

The following are the major changes incorporated in naturalFRUIT with regard to FRUIT. This list is helpful if you are already familiar with FRUIT or are trying to port your testing framework to naturalFRUIT from FRUIT.

1. **Deprecated procedures**: A few procedures have been replaced to maintain consistency in naming convention. Refer the page [Deprecated Methods](https://cibinjoseph.github.io/naturalFRUIT/page/DeprecatedProcedures/index.html) in the documentation for details.
2. **Single module**: FRUIT consisted of two modules packaged into a single file. Now, the `fruit_util` module has been removed and necessary subroutines have been included inside the `[[naturalfruit]]` module itself in the file `naturalfruit.f90`.

