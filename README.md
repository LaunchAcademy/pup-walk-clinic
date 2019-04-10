# Pup Walks

## Part 1
  * For Part 1 we are going to focus on building our schema

  Create the migrations to build a schema, and models to represent the following data and object relationships:

    ```
    #### Pups

    * A pup must have a unique name
    * A pup can have many walks
    * A pup can have many walkers


    #### Walkers

    * Must have a unique name
    * A walker can have many walks
    * A walker can have many pups

    #### Walks

    * Must have a day
    * Must belong to one pup
    * Must belong to one walker
    * A Pup cannot be Walked by the same Walker on the same Day more than once
```

## Part 2
  * utilize pry in testing environment and in development (via `pry -r ./server.rb`) to poke around and look at our methods, associations, validation

## Part 3
  * Seed your development database with a Seeds file!  open up your app and poke around and make sure it works as you expect

## Optional Challenge
  * Write Tests for the ActiveRecord models including validations
  * This is for practice to see errors when things aren't set up correctly on the model level for ActiveRecord, as we get more comfortable you should also feel comfortable doing this as a part of making the tables and models and testing it with pry and seed data

# pup-walk-clinic
