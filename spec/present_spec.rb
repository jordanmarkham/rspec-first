require 'present'

RSpec.describe "Wrapping + Unwrapping" do
    it "Wraps and unwraps inputs" do
        present = Present.new
        present.wrap(2)
        expect(present.unwrap).to eq 2
    end

    it "Fails if tries to unwrap nothing" do
        present = Present.new
        expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end

    it "Fails to wrap if already wrapped" do
        present = Present.new
        present.wrap(3)
        expect { present.wrap(2) }.to raise_error "A contents has already been wrapped."
    end
end