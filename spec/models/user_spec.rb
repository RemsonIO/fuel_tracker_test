require 'rails_helper'

RSpec.describe User, type: :model do

  context "validations" do
    it "should return errors" do
      user = User.new({
          email: "",
          password: "",
          role: "",
        })

      user.valid?
      expect(user.errors.size).to eq 3
    end

    it "will check for certain roles" do
      user = User.new({
          email: "manager2@dis.com",
          password: "123123123",
          role: "visitor",
        })

      user.valid?
      has_role_error = user.errors.include?(:role)
      expect(has_role_error).to eq true
    end

    it "should pass" do
      user = User.new({
          email: "manager2@dis.com",
          password: "123123123",
          role: "manager",
        })

      expect(user.valid?).to eq true
    end
  end

end
