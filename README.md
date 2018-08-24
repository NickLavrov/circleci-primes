# circleci-primes
Create a list of prime numbers using CircleCI!

This repo keeps a running list of prime numbers, found in `primes.txt`. A commit to the master branch triggers a build on CircleCI, calculates the next prime number, adds it to the list, commits the new list to the master branch, triggers a build on CircleCI, calculates the next prime number, adds it to the list... you get the idea.

[Watch the builds here!](https://circleci.com/gh/NickLavrov/circleci-primes "Builds on CircleCI")
