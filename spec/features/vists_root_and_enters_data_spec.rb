require 'rails_helper'

feature "User visits SQW root and submits some data to form" do
  scenario "success" do
    visit root_path
    expect(page).to have_css 'h1', text: 'Single Quote Wrapper'
    fill_in('x', :with => 'foo bar')
    click_on("Go!")
    expect(page).to have_css 'code',
     text: "SELECT * FROM <TableName> WHERE <ColumnName> IN ('FOO', 'BAR');"
  end
end
