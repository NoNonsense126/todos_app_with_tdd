module Feature
  def sign_up_as(options = {})
    fill_in "Email", with: options[:email]
    fill_in "Password", with: options[:password]
    fill_in "Password confirmation", with: options[:password_confirmation]
  end
end