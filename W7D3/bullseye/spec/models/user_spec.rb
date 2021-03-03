require 'rails_helper'
require 'spec_helper'


RSpec.describe User, type: :model do
  #todo make controllers so we can test password input into User.new
  let(:no_user) { User.new(email: '') }

  describe "validations" do

    it "validates presence of email" do
      no_user = User.new(email: '')
      expect(no_user).not_to be_valid
    end

    it { should validate_presence_of(:email) }
    #it { should validate_uniqueness_of(:email) }  

  end

end

require 'rails_helper'
require 'spec_helper'


# RSpec.describe User, type: :model do

#   subject(:valid_user) = User.create(email: "valid@valid.com", password_digest: "password", session_token: "")
#   #todo make controllers so we can test password input into User.new
#   #let(:no_user) { User.new(email: '') }

#   describe "validations" do

#     it "validates presence of email" do
#       no_user = User.new(email: '')
#       expect(no_user).not_to be_valid
#     end

#     it { should validate_presence_of(:email) }

    

#     it { should validate_uniqueness_of(:email) }  

#   end

# end