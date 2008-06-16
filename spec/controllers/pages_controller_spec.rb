require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  render_views

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
 
     it "should have right title" do 
      get :home 
       expect(response.body).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end


     it "should not have empty body" do
        get :home
        response.body.should_not =~ /<body>\s*<\/body>/ 
      end




  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end


it "should have right title" do 
      get :contact
       expect(response.body).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | contact")
    end

  end

describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end



it "should have right title" do 
      get :about
       expect(response.body).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | about")
    end


  end






end
