feature "Attacking players" do
  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Bob attacked Jack"
  end
end
