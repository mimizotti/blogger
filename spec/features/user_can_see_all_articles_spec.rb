require "rails_helper"

RSpec.feature "User can see all articles", :type => :feature do
  scenario "User visits articles#index and can see all articles" do

    Article.create(title: "Learn Ruby the Hard Way",
                body: "In seven weeks, learn how to code like a real programmer!")

    visit "/articles"

    expect(page).to have_text("Learn Ruby the Hard Way")
  end
end