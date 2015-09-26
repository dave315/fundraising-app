require 'rails_helper'

feature 'Registers organization', %Q{
  As a fundraising chair
  I want to register my org to fundraise
  with CommuniKey so that we can start our fundraising effort
} do

  # Acceptance Criteria:
  # * ,
  #   password, and password confirmation
  # * If I don't specify the required information, I am presented with
  #   an error message

  scenario 'provide valid registration information' do
