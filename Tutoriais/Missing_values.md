Selection: 4

  |                                                                      |   0%

| Missing values play an important role in statistics and data analysis. Often,
| missing values must not be ignored, but rather they should be carefully
| studied to see if there's an underlying pattern or cause for their
| missingness.

...

  |====                                                                  |   5%
| In R, NA is used to represent any value that is 'not available' or 'missing'
| (in the statistical sense). In this lesson, we'll explore missing values
| further.

...

  |=======                                                               |  11%
| Any operation involving NA generally yields NA as the result. To illustrate,
| let's create a vector c(44, NA, 5, NA) and assign it to a variable x.

> x <- c(44,NA,5,NA)

| You nailed it! Good job!

  |===========                                                           |  16%
| Now, let's multiply x by 3.

> x * 3
[1] 132  NA  15  NA

| You nailed it! Good job!

  |===============                                                       |  21%
| Notice that the elements of the resulting vector that correspond with the NA
| values in x are also NA.

...

  |==================                                                    |  26%
| To make things a little more interesting, lets create a vector containing
| 1000 draws from a standard normal distribution with y <- rnorm(1000).

> y <- rnorm(1000)

| Keep up the great work!

  |======================                                                |  32%
| Next, let's create a vector containing 1000 NAs with z <- rep(NA, 1000).

> z <- rep(NA, 1000)

| Nice work!

  |==========================                                            |  37%
| Finally, let's select 100 elements at random from these 2000 values
| (combining y and z) such that we don't know how many NAs we'll wind up with
| or what positions they'll occupy in our final vector -- my_data <-
| sample(c(y, z), 100).

> my_data <- sample(c(y, z), 100)

| Great job!

  |=============================                                         |  42%
| Let's first ask the question of where our NAs are located in our data. The
| is.na() function tells us whether each element of a vector is NA. Call
| is.na() on my_data and assign the result to my_na.

> my_na <- is.na(my_data)

| Great job!

  |=================================                                     |  47%
| Now, print my_na to see what you came up with.

> my_na
  [1]  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE
 [13]  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE
 [25] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE
 [37] FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE
 [49]  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE
 [61]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE
 [73]  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE
 [85] FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE
 [97]  TRUE FALSE FALSE  TRUE

| Your dedication is inspiring!

  |=====================================                                 |  53%
| Everywhere you see a TRUE, you know the corresponding element of my_data is
| NA. Likewise, everywhere you see a FALSE, you know the corresponding element
| of my_data is one of our random draws from the standard normal distribution.

...

  |=========================================                             |  58%
| In our previous discussion of logical operators, we introduced the `==`
| operator as a method of testing for equality between two objects. So, you
| might think the expression my_data == NA yields the same results as is.na().
| Give it a try.

> my_data == NA
  [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [26] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [51] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [76] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| That's the answer I was looking for.

  |============================================                          |  63%
| The reason you got a vector of all NAs is that NA is not really a value, but
| just a placeholder for a quantity that is not available. Therefore the
| logical expression is incomplete and R has no choice but to return a vector
| of the same length as my_data that contains all NAs.

...

  |================================================                      |  68%
| Don't worry if that's a little confusing. The key takeaway is to be cautious
| when using logical expressions anytime NAs might creep in, since a single NA
| value can derail the entire thing.

...

  |====================================================                  |  74%
| So, back to the task at hand. Now that we have a vector, my_na, that has a
| TRUE for every NA and FALSE for every numeric value, we can compute the total
| number of NAs in our data.

...

  |=======================================================               |  79%
| The trick is to recognize that underneath the surface, R represents TRUE as
| the number 1 and FALSE as the number 0. Therefore, if we take the sum of a
| bunch of TRUEs and FALSEs, we get the total number of TRUEs.

...

  |===========================================================           |  84%
| Let's give that a try here. Call the sum() function on my_na to count the
| total number of TRUEs in my_na, and thus the total number of NAs in my_data.
| Don't assign the result to a new variable.

> sum(my_na)
[1] 44

| Excellent work!

  |===============================================================       |  89%
| Pretty cool, huh? Finally, let's take a look at the data to convince
| ourselves that everything 'adds up'. Print my_data to the console.

> my_data
  [1]           NA  0.706401530           NA -1.202246349 -0.032740428
  [6]           NA  0.731714445           NA -0.007241556           NA
 [11] -0.294731137 -0.676907009           NA           NA           NA
 [16]  2.669335779  0.296647470  0.414028804 -0.498970593  1.944222399
 [21]           NA           NA  0.944928916  1.506305875 -0.372344055
 [26] -0.469045332  0.143640709  1.249205500           NA -1.501760633
 [31]  2.340305986  1.600001795           NA           NA           NA
 [36] -0.883305040 -2.520044326 -0.137317807           NA           NA
 [41]  1.385350189           NA  1.041979601           NA -0.471576643
 [46]           NA  0.839566400 -1.699126284           NA  1.377339986
 [51]           NA  1.251086646  1.897913241           NA  1.313734507
 [56]           NA -1.139482544 -0.406317730 -0.216632164 -0.567928170
 [61]           NA           NA           NA           NA           NA
 [66]           NA           NA           NA -0.805552629           NA
 [71] -0.091212840 -0.333444913           NA           NA           NA
 [76] -1.037992215 -0.975549153 -0.242059874 -2.905302784 -0.055884068
 [81]           NA           NA           NA  2.368795655 -0.830146562
 [86] -0.738745462  1.436167748 -0.087177684  0.199678714           NA
 [91]           NA           NA -1.241851083  0.556682509           NA
 [96]  0.928203788           NA -0.282043993 -0.121751015           NA

| Perseverance, that's the answer.

  |==================================================================    |  95%
| Now that we've got NAs down pat, let's look at a second type of missing value
| -- NaN, which stands for 'not a number'. To generate NaN, try dividing (using
| a forward slash) 0 by 0 now.

> 0/0
[1] NaN

| All that hard work is paying off!

  |======================================================================| 100%
| Let's do one more, just for fun. In R, Inf stands for infinity. What happens
| if you subtract Inf from Inf?

> Inf - Inf
[1] NaN

| Great job!
