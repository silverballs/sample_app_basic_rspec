require 'spec_helper'

# describe "StaticPages" do

#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end

# replace the above with:

describe "Static pages" do

  describe "Home page" do
# the sample app below is what needs to be located on the view as well
# or it will not work... if you remove the words Sample App from the home view it will fail

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end
end

