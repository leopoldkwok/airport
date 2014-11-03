Week 3 Challenge - Airport
==========================

Objectives:
-----------

* Implement software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. * Occasionally it may be stormy, in which case no planes can land or take off
* Create a set of classes/modules and demonstrate planes taking-off/landing at different airports in different weather conditions
* Ensure full test coverage throughout using the london-style


Your task is to create a set of classes/modules to makes the given test suite pass. You will need to use random number generator to set the weather (it is normally sunny but on rare occasions it may be stormy). In your tests, you'll need to use a double to override random weather. Finally, every plane must have a status indicating whether it's flying or landed.

Technologies used
------------------

* Ruby
* Rspec

How to use
-----------

Clone the repository:

```shell
$ git clone git@github.com:leopoldkwok/airport.git
```

Change into the directory:

```shell
$ cd airport
```


How to run the tests:

```shell
$ rspec
```

Open irb:
```shell
$ irb
```

Require the files:

```ruby
> require "./lib/Weather.rb"
> require "./lib/airport.rb"
> require "./lib/plane.rb"
```

Create a new airport:

```ruby
> airport = Airport.new
```

Create a new plane:

```ruby
> plane = Plane.new
```

For a plane to take off:

```ruby
> plane.take_off!
```

For a plane to land:

```ruby
> plane.land!
```






