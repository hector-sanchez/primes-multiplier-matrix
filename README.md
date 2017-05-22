# Primes Multiplier Matrix

This is an exercise on gerating an n array of prime numbers and multiplying each element to generate a matrix of the product of the permutations of all elements of the primes array with the original prime number array as the first elements in the first row.

## Performance

My performance considerations are two-fold. First, during the original generation of the prime numbers array. For this I include the redis gem so that we may cache the prime number array and retrieve any subsequent requests to generate the array from cache. If the cached array starts below the requested array, the cached is retrieved up and until the requested number of prime number elements or if the cached array is shorter in length than the requested array, I regenerate the remaining elements from the point at which the cached array ends; then the cached is update to include the missing elements.
The other performance element I consider is in the calculation of the array elements. To generate the grid I use a map function within a map function to calculate element. 

## Other Notes

* Rather than provide guard clauses within the product mappig of the prime numbers array, I make sure to include the original prime numbers array only after the calculation of the product of each integer in the erray.
* The unit tests test tests for private methods. I normally wouldn't do this, but I feel it was necessary to make sure we have good coverage of the main logic.
