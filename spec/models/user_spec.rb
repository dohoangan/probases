require 'spec_helper'

describe User do
  before do 
  	@user = User.new(email: "an@example.org", password: "foobar", password_confirmation: "foobar")
  end

  subject { @user }

	it { should respond_to :email }  
end
