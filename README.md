This app was based on tutorials found: http://ruby.railstutorial.org
in Learn Web Development with Rails book by Michael Hartl




Getting up to speed:
#FIRST
1.  create new rails app with --skip-test-unit 
2.  modify gemfiles to the current gemfile found in this sample_app
	and run bundle install --without production 
3.  update the .gitignore file found here as well 
4.  update config/initializer/secret
5.  run rails g rspec:install and you are now caught up



#SECOND
1. It is always good to work on a different branch other than the master, so we are going to now
   do git checkout -b static-pages since we are going to play with some static pages

2.  rails generate controller StaticPages home help --no-test-framework
# could also use static_pages but tutorial prefers camelcase.  

*  to find out how to delete or undo things you can always run rails generate -h and go from there but if you refer to the tutorial on the top link Michael gives some good examples.  


# THIRD  - OUR FIRST TEST

1. rails g integration_test static_pages which invokes rspec to create a file
	spec/requests/static_pages_spec.rb
2. Change the spec/requests/static_pages_spec.rb
3. Change spec/spec_helper.rb and add config.include Capybara::DSL
4.  To begin testing run  bundle exec rspec spec/requests/static_pages_spec.rb
5.  note that the block we put into the spec/requests/static_pages_spec.rb contain some things in quotes that the tests are looking for.  This is a vague example so for the home page... it could have Sample App in a variety of places for it to pass... Doesn't have to be in the title for example... 

# Adding a page that does not exist... remember we only created a controller for Home and help at first... 
1.  if you run the same test you have been running for the about page it will not work of course.. follow the hints it gives you to keep adding what it needs to finally pass!

2.  add get "static_pages/about" to the config/routes file

3.  finally, the 3rd test for about tells us we need to add a view based on the missing template. 

4. Now doing a title test by adding:  note we also moved the app/views/layouts/application.html.erb temorarily for this

it "should have the right title" do
  visit '/static_pages/home'
  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
end

5.  I left the views commented out so you can see what woul dhave needed to be without the application layout being in place for each view


6.  Don't forget to git checkout master and merge static-pages!

7.  I will try to re organize this when I have the time soon... 
