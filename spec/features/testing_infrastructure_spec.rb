feature "Testing webpage tree" do
  scenario "Testing index page" do
    visit("/")
    expect(page).to have_content "Bookmark Manager"
  end
  
  scenario "Testing index page" do
    visit("/bookmarks")
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
  
end