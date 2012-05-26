Episode 6 - Block Review
=====================================

Technical Stuff for things you now know.

The List
--------


1. class definitions
2. Hash data-dictionary
3. symbols and strings
4. Instance Variables
5. local variables
6. requiring external files
7. test suites
8. Database connections
9. Database Access (ActiveRecord)
10. Isolated Testing
11. class methods
12. Array/Collection/Enumeration methods (map, select)
13. Import from CSV (episode 4, free)
14. Load a file into a string
15. configuration values in YML

Panda Assignment
----------------

1. Create a class definition for an automobile
2. The class should have the following characteristics:
	* Should have a class method that returns the number of wheels it has
	* Should have instance variables for color, make, model, and year
	* I should be able to pass in a hash of color, make, model, and year to the class to update its variables

Tiger Assignment
----------------

1. Create a Vehicle class that automobile inherits from
2. Create a Motorcycle class that inherits from vehicle
3. Show the motorcycle class overriding the vehicle's class method for number of tires
4. Implement the `==(other)` method to test if the car's color/make/model/year match

Eagle Assignment
----------------

1. Create a class variable (@@) in the Vehicle that tracks all vehicles made
2. Create a class method that let's you filter the vehicles to only blue honda accords (using our enuerable filters)
3. Do it all using TDD (of course!)

License
-------

Copyright Jesse Wolgamott 2012, MIT License. See LICENSE
