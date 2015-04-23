module Features
  module SessionHelpers
    def sign_up_with(email, password)
      visit sign_up_path
      fill_in 'Email', with: email
      fill_in 'Password', with: password
      click_button 'Sign up'
    end

    def sign_in
      user = create(:user)
      visit "users/sign_in"
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'
    end
  end
end