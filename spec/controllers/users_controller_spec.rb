require 'spec_helper'

describe UsersController do
  render_views
  describe "GET 'new'" do
    #test de l'url
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    
    #test du titre
    it "should have a good title" do
      get 'new'
      response.should have_selector("title", :content => "Inscription")
    end
  end

end
