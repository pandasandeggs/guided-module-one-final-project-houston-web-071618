# Module One Project

In this project we are building a Command Line database application.

### Goals for the Command Line CRUD App

1. Build at least three models with corresponding tables, including a join table
2. Access a Sqlite3 Database using ActiveRecord
3. Build out a CLI that allows users to interact with your database
4. Use good OO design patterns. You should have separate models for your runner and CLI interface.

## Deliverables
We are building an app for an Uber-eats competitor - “IndiEats”- that enables customers to support locally owned independent restaurants in their area.

- models are customer, order, and restaurant
 - a customer has many restaurant options through an order
    - has a name, preference, budget, location attribute
- A restaurant has many customers
    - has a name, hours of operation, type, affordability, location attributes
- An order belongs to a restaurant and a customer


#User Stories -user interaction with app

- As a user, I want to be able to be given recommendations based on user preference.
- As a user, I want to only be shown restaurants within my budget.
- As a user, I want to be able to see whether a restaurant is open or closed
- As a user, I want to enter a location and be given nearby restaurant suggestions


### Data Models    
- We made a new file for each model in the lib folder.
- Made sure that every model inherits from activerecord base.

### Migrations
- Created database and migrations in the terminal (keeping in mind that we have Rake available).
- Opened up console in terminal to make sure everything's working properly. Tested relationships.

### Seeding the Database
- Created seed file in the db folder, where we manually created new instances of our classes and saved them to our database so that we could have enough data to play around with in the command line interface.

### CLI
- Created a command line interface model in the lib directory starting with a greet method that greets the app user. Followed by methods to query the database and enable user/app interaction.
