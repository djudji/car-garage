# Car Garage Simulation in Ruby on Rails

Simple project made for job interview. (Trello-like todo application added just for fun).

  - Ruby on Rails
  - Javascript
  - HTML 5
  - CSS 3
  - Bootstrap

### The Garage

The city of Vence needs help with the implementation of a new parking garage and asks you for your support.
The garage should support different types of vehicles:
- Cars
- Motorbikes

Every vehicle has a unique identifier (the licence plate), and can exist only once – thus being either within the garage or outside of it.

The planned garage should support multiple parking levels – the city of Vence is currently undecided how high they will be able to build for stability reasons. As a result, your implementation should allow for arbitrary numbers of parking levels – at least 1 level, but keep it flexible.

The same goes for the number of parking spaces per level – the area where the garage will be built is not yet decided upon. So again, keep this flexible and configurable.

Your task is to develop a simulation program for the garage. Vehicles should be able to enter and exit the garage – the garage should then assign a free space or reject the vehicle if there are no more free parking lots.

The manager of the garage should be able to ask the system for the location of a specific vehicle. The response should include the parking level and the assigned parking lot. Also, the number of free parking lots should be queryable.
