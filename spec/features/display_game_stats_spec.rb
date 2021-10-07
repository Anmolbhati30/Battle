feature "Display game stats" do
  scenario "Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content "Jack: 100/100 HP"
  end
end
