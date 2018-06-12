# Craigslist Clone

#### Project Flow:

1. Run rails new <Project-Name-Here>.
2. Go into directory and run `bundle install`.
3. Make a Database using the `rails g migration initial_schema`.
4. Add Schema tables (create_table).
5. Run `rake db:migrate` to autogenerate a Schema.
6. Make models and assign them corresponding to their relations.
7. Make controllers and set up routes using the `config/routes.rb` file.
8. Add the root index file and corresponding stylesheets.
8. Make views and define them in the controller. Add them to the `routes.rb` file and tag them into links into the root `index.html.erb` file.
9. Define categories and subcategories in a way that would look good into a URL (breadcrumb).
10. Define data for `config/seeds.rb` file and run `rake db:seed` to make sure that duplicate data is not being stored and the CRUD operations are running in the Database.
11. Use `rails c` on the terminal and type `<Record Name>.all` to see the record data.
12. Duplicate this step for all the categories.
