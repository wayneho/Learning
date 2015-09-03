require "spec_helper"

module TicTacToe

	describe Player do
		before(:each) do
			@input = {mark: "X", name: "Someone"}
		end

		context "#initialize" do
			it "raises an exception when initialized with {}" do
				expect {Player.new{}}.to raise_error
			end
			it "does not raise an error when initialized with a valid input hash" do
				expect{Player.new(@input)}.to_not raise_error
			end
		end
		
		context "#mark" do
			it "returns the mark" do
				player = Player.new(@input)
				expect(player.mark).to eq "X"
			end
			it "returns the name" do
				player = Player.new(@input)
				expect(player.name).to eq "Someone"
			end
		end
	end
end