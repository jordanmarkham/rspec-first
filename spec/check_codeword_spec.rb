require 'check_codeword'

RSpec.describe "Checks codeword" do
    it "Works when password is correct." do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    it "Says 'almost!' when password contains an h and an e." do
        result = check_codeword("house")
        expect(result).to eq "Close, but nope."
    end
    it "Says WRONG! when password is incorrect and not close to the codeword." do
        result = check_codeword("john")
        expect(result).to eq "WRONG!"
    end
end