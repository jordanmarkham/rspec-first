require 'password_checker'

RSpec.describe "Checks passwords for right length" do
    it "Password meets requirements." do
        password = PasswordChecker.new
        expect(password.check("Hellothere")).to eq true
    end
    it "Password does not meet requirements." do
        password = PasswordChecker.new
        expect{password.check("Hello")}.to raise_error "Invalid password, must be 8+ characters."
    end
end