def sign_in_and_play
  visit "/"
  fill_in :player_1_name, with: "Bob"
  fill_in :player_2_name, with: "Jack"
  click_button "Let's go!"
end
