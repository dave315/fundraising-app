require 'rails_helper'

feature 'Registers organization', %Q{
  As a fundraising chair
  I want to register my org to fundraise
  with CommuniKey so that we can start our fundraising effort
} do

  # Acceptance Criteria:
  # * User fills out form that gives CKEY information about organization
  # * CKEY app saves organization and redirects them to their admin page upon success
  # * If user doesn't specify the required information, they are prestented with error messages

  scenario 'provide valid registration information' do
    user = FactoryGirl.create(:user)
    organization = FactoryGirl.create(:organization)

    sign_in_as(user)

    visit root_path

    expect(page).to have_link("Register Your Org")
    click_link("Register Your Org")

    fill_in("Name", with: organization.name)
    fill_in("Description", with: organization.description)
    fill_in("Contact email", with: organization.contact_email)
    fill_in("Contact first name", with: organization.contact_first_name)
    fill_in("Contact last name", with: organization.contact_last_name)

    click_button("Submit")

    expect(page).to have_content("You have successfully registered!")
    expect(page).to have_content(organization.name)
    expect(page).to have_content(organization.balance)
  end
end
