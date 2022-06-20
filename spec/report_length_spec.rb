require "report_length"

RSpec.describe "Checks length of inputted statements." do
    it "Returns number of characters, including spaces." do
        result = report_length("Hello there!")
        expect(result).to eq "This string was 12 characters long."
    end
    it "Returns number of present numbers given." do
        result = report_length("123456789")
        expect(result).to eq "This string was 9 characters long."
    end
end