class User::AnSignUp < User
  validates :password, presence: true, confirmation: true

  validates :terms, acceptance: true

  after_create :send_welcome_email

  private

  def send_welcome_email
    Mailer.welcome(user).send
  end
end


# same way can be created for example:

# class User::AsSignUp < User
# class User::AsProfile < User
# class User::AsAdminForm < User
# class User::AsFacebookLogin < User

# And so on...