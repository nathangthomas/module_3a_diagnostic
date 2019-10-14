require 'rails_helper'

describe 'As a user' do

  it "when I visit root_path and select 'Griffindor' from the select field and click 'Search For Members' I should be on the '/search' page and see a total of the number of members for that house and a list of the house members" do

    visit '/'
    select('Griffindor')
    click_on('Search For Members')
    expect(current_path).to eq('/search')

    expect(page).to have_content('Griffindor')

    witin '.house-members' do
      expect(page).to have_css(".house-member", count: 18)
    end
  end


  it "for each member I should see their name, role, house and patronus" do
    visit '/search'

    within(first(".house-member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".house")
      expect(page).to have_css(".patronus")
    end
  end

end
