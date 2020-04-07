title: Assert methods

FRUIT provides several assert methods to check for and report failures. The following list contains the most commonly used formats. Although only the `[[assert_equal]]` method is shown here, the same formats exist for the `[[assert_not_equal]]` method.</br></br>

#### 1. `[[assert_equal]]`
<table style="width:100%", rules="rows">
<tr><th>Syntax</th> <th>Returns true if</th> <th>Underlying function</th></tr>
<tr><td>`assert_equal(logical a, logical b)`</td> <td>`a == b`</td> <td>`assert_eq_logical_`</td></tr>
<tr><td>`assert_equal(string a, string b)`</td> <td>`a == b`</td> <td>`assert_eq_string_`</td></tr>
<tr><td>`assert_equal(int a, int b)`</td> <td>`a == b`</td> <td>`assert_eq_int_`</td></tr>
<tr><td>`assert_equal(real a, real b)`</td> <td>`a == b`</td> <td>`assert_eq_real_`</td></tr>
<tr><td>`assert_equal(real a, real b, real tol)`</td> <td>`abs(a - b) < tol`</td> <td>`assert_eq_real_in_range`</td></tr>
<tr><td>`assert_equal(double a, double b)`</td> <td>`a == b`</td> <td>`assert_eq_double_`</td></tr>
<tr><td>`assert_equal(double a, double b, double tol)`</td> <td>`abs(a - b) < tol`</td> <td>`assert_eq_double_in_range`</td></tr>
<tr><td>`assert_equal(complex double a, complex double b)`</td> <td>`a == b`</td> <td>`assert_eq_complex_`</td></tr>
<tr><td>`assert_equal(complex double a, complex double b, double tol)`</td> <td>`abs(a - b) < tol`</td> <td>`assert_eq_complex_in_range`</td></tr>
</table>  
</br>

All the assert methods accept a `message` argument that, if specified, is used as the error message on failure. Additionally, the real and double assert methods also accept 1 and 2 dimensional arrays as inputs.
