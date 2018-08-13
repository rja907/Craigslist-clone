# Craigslist Clone

> I took on this project to learn Ruby by example on the weekends/free time. I doubt this will be of use to anyone.

#### Project Flow:

1. Run rails new <Project-Name-Here>.
2. Go into directory and run `bundle install`.
3. Make a Database using the `rails g migration initial_schema`.
4. Add Schema tables (create_table).
5. Run `rake db:migrate` to autogenerate a Schema.
6. Make models and assign them corresponding to their relations.
7. Make controllers and set up routes using the `config/routes.rb` file.
8. Add the root index file and corresponding stylesheets.
9. Make views and define them in the controller. Add them to the `routes.rb` file and tag them into links into the root `index.html.erb` file.
10. Define categories and subcategories in a way that would look good into a URL (breadcrumb).
11. Define data for `config/seeds.rb` file and run `rake db:seed` to make sure that duplicate data is not being stored and the CRUD operations are running in the Database.
12. Use `rails c` on the terminal and type `<Record Name>.all` to see the record data.
13. Repeat this step for all the categories.
14. Use the Controller to fetch the data from the database and use that fetched data to change the view of the page.
15. Showed the listings of the different categories with ids by inserting a `category_path`, making a show function in the `CategoriesController` and made a basic `show.html.erb`.
16. Showed the listings of different subcategories within categories with ids by inserting a `category_subcategory_path`, making a show function in the `SubcategoriesController` and made a basic `show.html.erb`.
17. For the listings, we need the CRUD operations. So, add `resources :listings` to `routes.rb` file and then run `rake routes`.
18. To use the listings CRUD operations, add a link to `index.html.erb`, then define the new function in the `ListingsController` and finally, add the template for `new.html.erb`.
19. Made a Listings view page and added a form to Create Listings. A new instance of the Listing was initiated in the `ListingsController`.
20. To submit the form, there is a need of a `create` action in the `ListingsController`.
21. Another private method called `listing_params` was made to make sure that only the specific data is passed through the parameters.
22. We add code to save the form data and reditrect the users to the listing after clicking submit.
23. Added code to the ListingsController to show the listings page on form submit and added a file for the view. As we submit the form, sqlite3 database also got updated.
24. Ran `rails g migration add_category_subcategory_to_listings` so that it is possible to have fields for categories and subcategories in `create_listing` form.
25. Added code to `change` function and ran `rake db:migrate`.
26. Added `find_by_category` method to select subcategories based on the category chosen and added a post request to `routes.rb` file.
27. There is no use for loading JS every time so `//=require_tree.` was removed from `application.js` file.
28. Added code to include js in the view, used `initializers` to `precompile js` file to select subcategories based on the category chosen and fixed bugs in `routes.rb` and `SubcategoriesController`.
29. Added code to parse listing data according to categories and subcategories to show the listings accordingly for categories links.
30. Added views for pages when there is no listing data for a particular Category or Subcategory.
31. Added `geocoder` gem for search functionality for the listings and added code to `listings.rb` to join the details of the location.
32. Ran `rails g migration add_lat_long_to_listings` and added code to change function for the type of latitude and longitude. After that, ran `rake db:migrate`.
33. Added code to `ListingsController`, `Listings model` and `index.html.erb` to support search functionality for all the listings using the data present.
34. Added `devise` gem for Authentication functionality. Ran `rails generate devise:install`. Followed steps required to properly have devise working and ran `rails g devise:views`.
35. Added functionality for logged in and guest users with different views and tested the login/logout features.
36. Ran `rails g migration added_user_index_to_listings`. After that, ran `rake db:migrate`. This adds the user index to listings so that it is easier to code a functionality for the user to look at their listings.
37. Added edit and delete buttons (and paths) for the user to have the functionality to delete or edit a listing that they posted.
38. Added a file to to edit listings and added `update` and `destroy` actions for listings. Added breadcrumbs to all the static pages of the site.
39. Added a validations for listings.
