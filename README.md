# Overview

In this exercise you will write migrations to add, remove and alter columns in the database.

### Skills needed

* rake db:migrate
* rake db:rollback
* rails g migration AddXXXToYYY
* rails g migration RemoveXXXToYYY
* rails g migration 

# Setup

Whenever you receive a new rails project there are a few steps you probably want to perform.  Can you think what those might be?

```sh
bundle install
rake db:setup #or rake db:create db:schema:load
```
> commit these to memory!


This exercise is broken into several pieces on different branches.  You'll be asked to create various migrations for each exercise and you'll be given tests to help you verify your work.

After you complete an exercise, you'll commit and then change branches.  *(your changes on branch A won't show up on branch B)*  **Make sure you have NO changed files BEFORE changing branches.** You can use `git status` to check.

Since the database is different on each branch you'll need to set it up again.  You can do `rake db:drop db:setup` to get the database setup again.

Here's a list of those steps one more time:

1. Make sure you have no unstaged commits `git status`
2. Checkout the branch: `git checkout 1_ingredients_table
3. `rake db:drop db:create db:migrate`
3. Complete the exercise and run tests `rspec spec/models/FILENAME`
4. If successful, commit and move on.

If when running tests you ever encounter an `ActiveRecord::PendingMigrationError` that means you generated a new migration - but haven't run it yet.

### Running tests

Each exercise comes with an rspec test.  To run it:

`> rspec spec/models/FILENAME`


# Exercises 

### Exercise 1: Add ingredients table

* branch: `1_ingredients_table`
* spec: ingredient_spec.rb

Please add a new table for _ingredients_.  Start on the 1_ingredients_table branch

It should have the following columns and types:

```
name - string
quantity - float
brand - string
```

Once you're done run the spec file: `bundle exec rspec spec/models/ingredients_spec.rb`

Hopefully you see something like:

```
Ingredient
  should have db column named name
  should have db column named quantity
  should have db column named brand
  should have db column named name of type string
  should have db column named quantity of type float
  should have db column named brand of type string

Finished in 0.01286 seconds (files took 1.57 seconds to load)
6 examples, 0 failures
```

If you see errors: first read them - maybe you can solve this.  If not:

1. rollback the migration `rake db:rollback`
2. either edit the migration file itself **OR** delete it and generate a new one
3. migrate again
4. run the tests again

If the tests pass, you're done.  Move onto the next exercise.


### Exercise 2: Add authors table

* branch: `2_authors_table`
* spec: authors_spec.rb

Now I'd like you to add a new table to store authors in.  It should have the following columns:

authors

```
name - string
age - integer
address - string
email - string
bio - text
```

Run the test file `spec/models/authors_spec.rb`

#### Exercise 2b: no address

* branch: same 
* spec: author_2b_no_address_spec.rb

Sorry, I changed my mind.  We don't really need the author's address.  Email is enough.

Please write a migration to remove it.

You can test your change with `spec/models/author_2b_no_address_spec.rb`


#### Exercise 2c: oops!

* branch: same 
* spec: author_2c_no_age_spec.rb


Oops, we shouldn't track age like that!  Age is a value we can calculate if we have the birthdate.  Let's track birthdate's instead.  

We'll do this in two steps (2c and 2d).  First create a migration to remove the age field.  

Test this with `spec/models/author_2c_no_age_spec.rb`

> By the way!  If you were to run `spec/models/author_spec.rb` right now - how many errors would you see?  Why?

#### Exercise 2d: add birthdate 

* branch: same 
* spec: author_2d_birthdate_spec.rb

Now create another migration to add the new date.

```
birthdate - date
```

You can test this with `spec/models/authors_2d_birthdate_spec.rb`


#### Exercise 3: Use only one migration

* branch: `3_modify_users_address`
* spec: user_spec.rb

> Start on the `3_modify_users_address` branch.

In the previous exercise you used two separate migrations to modify one table.  In this exercise your goal is to use **only 1 migration** to make **all the changes**.

Take a look at the current users table.  It currently has:

```
name - string
phone - integer
address - string
```

We want to split address up into its constituent parts.  But this time do the entire change in one migration.  

* Rename `address` to `street_address` 
* Add `state`, `zip`, `country` and `street_address2`.  
* Change the type of `phone` from integer to string

A good name for this migration might be `AddAddressDetailsToUsers`

#### Bonus Exercise 4: Add column constraints

* branch: 4_constraints  (don't start on 3!)
* spec: user_spec.rb

This time we'll make a different change set to the users table.  

* Please make the name field REQUIRED (null: false)
* Also add a boolean admin field with a default of false.

You can do this in 1 migration, but since these are sort of different tasks 2 is also OK.