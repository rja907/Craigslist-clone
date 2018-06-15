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
12. Repeat this step for all the categories.
13. Use the Controller to fetch the data from the database and use that fetched data to change the view of the page.
14. Showed the listings of the different categories with ids by inserting a `category_path`, making a show function in the `CategoriesController` and made a basic `show.html.erb`.
15. Showed the listings of different subcategories within categories with ids by inserting a `category_subcategory_path`, making a show function in the `SubcategoriesController` and made a basic `show.html.erb`.
16. For the listings, we need the CRUD operations. So, add `resources :listings` to `routes.rb` file and then run `rake routes`.
17. To use the listings CRUD operations, add a link to `index.html.erb`, then define the new function in the `ListingsController` and finally, add the template for `new.html.erb`.
