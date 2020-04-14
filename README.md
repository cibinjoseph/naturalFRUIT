[![Build Status](https://travis-ci.com/cibinjoseph/naturalFRUIT.svg?branch=master)](https://travis-ci.com/github/cibinjoseph/naturalFRUIT)
<br/>
![naturalFRUIT](media/naturalFRUIT-logo.png)
<br/>

# naturalFRUIT
A purely Fortran based unit testing framework derived from the original [Fortran Unit Test Framework (FRUIT)](https://sourceforge.net/projects/fortranxunit/).

## Why the new project?
1. FRUIT utilized the Ruby programming language to aid auto-generation of code and making of reports easier. However, this seemed to hinder users from adopting the testing framework due to time spent setting up additional dependencies and having to learn a whole new programming language. naturalFRUIT maintains only Fortran modules necessary for testing without dependencies on other languages.</br></br>
2. FRUIT documentation appeared to be generally lacking for intermediate to advanced uses. This project will utilize auto-generated documentation using [FORD](https://github.com/Fortran-FOSS-Programmers/ford).</br></br> 
3. FRUIT also appeared to not be updated constantly. Hopefully, improvements to Fortran will be reflected in FRUIT through this repo through collaborative development.
4. FRUIT, just like Fortran, did not contain exception handling. This meant it could not be used in testing using continous integration frameworks like Travis. naturalFruit gets over this to a certain extent and can be used with these frameworks.

## Documentation
Link to FORD generated [Documentation](https://cibinjoseph.github.io/naturalFRUIT/page/index.html).   
For a quick glance at assert methods, visit [Documentation](https://cibinjoseph.github.io/naturalFRUIT/page/index.html) > [Assert methods](https://cibinjoseph.github.io/naturalFRUIT/page/AssertMethods/index.html).  
The list of all subroutines available for use is provided in [Documentation](https://cibinjoseph.github.io/naturalFRUIT/page/index.html) > [Procedures](https://cibinjoseph.github.io/naturalFRUIT/lists/procedures.html).

## Usage
This repo is under very active development and a lot of drastic changes are being made at the moment. These include removal of deprecated and redundant subroutines and functions. Until this disclaimer is removed, users are cautioned against using naturalFRUIT and advised to use the original FRUIT module.

## Requirements
The naturalfruit module contains the `findloc()` intrinsic function that was introduced in Fortran 2008. This requires `gfortran-9` or `ifort-17+` for compiling.
If these compilers aren't available, a primitive implementation of the `findloc()` function, useful to this specific module, is provided as commented code and may be used with older versions that support Fortran 90.

## Contibution
All contributions through pull requests are accepted.  

### Creating documentation
For adding new documentation,
1. Fork this repo.
2. FORD parses comments with the marks *!!* in the source code and the folder *ford_input/* for creating documentation. Make the necessary changes.
4. Run `make docum` in the topmost directory of the repo to use FORD to autocreate the documentation webpages.
5. Commit all changes.
6. Send a pull request.
