require "spec_helper"

module TicTacToe
	describe Game do 
		let(:bob) {Player.new({mark: "X", name: "bob"})}
		let(:frank) {Player.new({mark: "O", name: "frank"})}

		context "#initialize" do
			it "randomly selects a current_player" do
				allow_any_instance_of(Array).to receive(:shuffle){[frank, bob]}
				game = Game.new([bob, frank])
				expect(game.current_player).to eq frank
			end

			it "randomly selects an other_player" do
				allow_any_instance_of(Array).to receive(:shuffle){[frank, bob]}
				game = Game.new([bob, frank])
				expect(game.other_player).to eq bob
			end
		end

		context "#switch_players" do
			it "changes current and other player" do
				game = Game.new([frank, bob])
				other_player = game.other_player
				current_player = game.current_player
				game.switch_players
				expect(game.current_player).to eq other_player
				expect(game.other_player).to eq current_player
			end
		end

		context "#solicit_move" do
			it "asks the player to make a move" do
				game = Game.new([bob, frank])
				allow(game).to receive(:current_player){bob}
				expected = "bob: Enter a number between 1 and 9 to make your move"
				expect(game.solicit_move).to eq expected
			end
		end

		context "#get_move" do
			it "converts human move of '1' to [0,0]" do
				game = Game.new([bob, frank])
				expect(game.get_move("1")).to eq [0,0]
			end
			it "converts human_move of '7' to [0,2]" do
				game = Game.new([bob, frank])
				expect(game.get_move("7")).to eq [0,2]
			end
		end

		context "#game_over_message" do
			it "returns '{current player name} won!' if board shows a winner" do
				game = Game.new([bob, frank])
				allow(game).to receive(:current_player){bob}
				allow(game.board).to receive(:game_over){:winner}
				expect(game.game_over_message).to eq "bob won!"
			end
			it "returns 'The game ended in a tie' if board shows a draw" do
				game = Game.new([bob, frank])
				allow(game).to receive(:current_player){bob}
				allow(game.board).to receive(:game_over){:draw}
				expect(game.game_over_message).to eq "The game ended in a tie"
			end

		end
	end
end