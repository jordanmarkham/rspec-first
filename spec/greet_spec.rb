require 'greet'

RSpec.describe "greet method" do
    it "Returns 'Hello, Joey!' upon execution" do
        result = greet("Joey")
        expect(result).to eq "Hello, Joey!"
    end
end