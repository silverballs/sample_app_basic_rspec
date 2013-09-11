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


