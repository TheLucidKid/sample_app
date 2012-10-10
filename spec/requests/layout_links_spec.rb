require 'spec_helper'

describe "LayoutLinks" do
  it "devrait trouver une page Accueil a '/' " do
    get root_path
    response.should have_selector('title', :content => "Accueil")
  end

  it "devrait trouver une page Contact at '/contact'" do
    get contact_path
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an A Propos page at '/about'" do
    get about_path
    response.should have_selector('title', :content => "About")
  end

  it "devrait trouver une page aide a '/help'" do
    get help_path
    response.should have_selector('title', :content => "Aide")
  end
  
  it "devrait trouver une page d'inscription a '/signup'" do
    get signup_path
    response.should have_selector('title', :content => "Inscription")
  end
  
  it "devrait avoir le bon lien sur le layout" do
    visit root_path
    click_link "A Propos"
    response.should have_selector('title', :content => "About")
    click_link "Aide"
    response.should have_selector('title', :content => "Aide")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Accueil"
    response.should have_selector('title', :content => "Accueil")
    click_link "S'inscrire !"
    response.should have_selector('title', :content => "Inscription")
  end
end
