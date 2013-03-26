# Erlang

## Day 1: Appearing Human

### Find

* [The Erlang language’s official site](http://www.erlang.org/)
* [Official documentation for Erlang’s function library](http://www.erlang.org/doc/)
* [The documentation for Erlang’s OTP library](http://www.erlang.org/doc/)

### Do
* Write a function that uses recursion to return the number of words in a string.

* Write a function that uses recursion to count to ten.

* Write a function that uses matching to selectively print `success` or
`error: message` given input of the form `{error, Message}` or `success`.

---

## Day 2: Changing Forms

### Do

* Consider a list of keyword-value tuples, such as `[{erlang, "a functional language"}, {ruby, "an OO language"}]`. Write a function that accepts the list and a keyword and returns the associated value for the keyword.
* Consider a shopping list that looks like `[{item, quantity, price}, ...]`. Write a list comprehension that builds a list of items of the form `[{item, total_price}, ...]`, where `total_price` is quantity times price.

### Bonus problem
* Write a program that reads a tic-tac-toe board presented as a list or a tuple of size nine. Return the winner (x or o) if a winner has been determined, `cat` if there are no more possible moves, or `no_winner` if no player has won yet.

---

## Day 3: The Red Pill

### Find
* An OTP service that will restart a process if it dies* Documentation for building a simple OTP server

### Do
* Monitor the `translate_service` and restart it should it die.
* Make the Doctor process restart itself if it should die.
* Make a monitor for the Doctor monitor. If either monitor dies, restart it.

### Bonus Problems
* Create a basic OTP server that logs messages to a file.
* Make the `translate_service` work across a network.