title: Assert methods

naturalFRUIT provides several assert methods to check for and report failures. The following list contains variants of the most commonly used formats. Although only the `[[assert_equal]]` and `[[assert_true]]` methods are shown here, analogous formats exist for the `[[assert_not_equal]]` and `[[assert_false]]` methods.</br></br>

#### 1. `[[assert_equal]]`
<table style="width:100%", rules="rows">
<tr><th>Syntax</th> <th>Returns true if</th> <th>Underlying subroutine</th></tr>
<tr><td></td><td></td><td></td></tr>
<tr><td>`assert_equal(logical a, logical b)`</td><td>`a == b`</td><td>`assert_eq_logical_`</td></tr>
<tr><td>`assert_equal(string a, string b)`</td><td>`a == b`</td><td>`assert_eq_string_`</td></tr>
<tr><td>`assert_equal(int a, int b)`</td><td>`a == b`</td><td>`assert_eq_int_`</td></tr>
<tr><td>`assert_equal(real a, real b)`</td><td>`a == b`</td><td>`assert_eq_real_`</td></tr>
<tr><td>`assert_equal(real a, real b, real tol)`</td><td>`abs(a-b) < tol`</td><td>`assert_eq_real_in_range_`</td></tr>
<tr><td>`assert_equal(real(dp) a, real(dp) b)`</td><td>`a == b`</td><td>`assert_eq_double_`</td></tr>
<tr><td>`assert_equal(real(dp) a, real(dp) b, real(dp) tol)`</td><td>`abs(a-b) < tol`</td><td>`assert_eq_double_in_range_`</td></tr>
<tr><td>`assert_equal(complex a, complex b)`</td><td>`a == b`</td><td>`assert_eq_complex_`</td></tr>
<tr><td>`assert_equal(complex a, complex b, tol)`</td><td>`abs(a-b) < tol`</td><td>`assert_eq_complex_in_range_`</td></tr>
<tr><td>`assert_equal(complex(dp) a, complex(dp) b)`</td><td>`a == b`</td><td>`assert_eq_complex_double_`</td></tr>
<tr><td>`assert_equal(complex(dp) a, complex(dp) b, real(dp) tol)`</td><td>`abs(a-b) < tol`</td><td>`assert_eq_complex_double_in_range_`</td></tr>
</table>  
</br>

#### 2. `[[assert_true]]`
<table style="width:100%", rules="rows">
<tr><th>Syntax</th> <th>Returns true if</th> <th>Underlying subroutine</th></tr>
<tr><td></td><td></td><td></td></tr>
<tr><td>`assert_true(logical a)`</td><td>`a == .true.`</td><td>`assert_true`</td></tr>
</table>  
</br>

@note
All the assert methods accept two optional arguments `message` and `status`.  
`message`, if specified, is used as the error message on failure.  
`status`, if present, supresses general test case behaviour like printing of success and failure messages, and the boolean variable provided to the `status` specifier returns `.true.` or `.false.` depending on assert sucess or failure. </br>
@endnote

Additionally, all assert subroutines that handle `int`, `real`, `real(dp)`, `complex`, and `complex(dp)` can also accept one and two dimensional arrays as input arguments. An element-wise check is performed in this case.
