require "rails_helper"

feature "user enters in relevant information and total savings is output" do
  scenario "user views index page" do
    visit "/"

    expect(page).to have_content "Solaredge Calculator"
    expect(page).to have_content "Please enter information below"
  end

  scenario "user enters information and is returned a row of results" do
    visit "/"
    fill_in "query_kwh_rate", with: "0.1046"
    fill_in "query_kwh_credit", with: "0.8140"
    fill_in "query_kwh_generated", with: "246.87"
    fill_in "query_sent_to_grid", with: "72"
    fill_in "query_distribution_charge", with: "23.32"
    click_on "Submit"

    expect(page).to have_content "Consumed: 174.87"
    expect(page).to have_content "Savings Consumed: 18.29"
    expect(page).to have_content "Credit Grid: 5.86"
    expect(page).to have_content "Savings before Distribution: 24.15"
    expect(page).to have_content "Total Savings: 0.83"
  end
end
