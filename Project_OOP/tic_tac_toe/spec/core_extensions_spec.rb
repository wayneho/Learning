require "spec_helper"

describe Array do
	before(:each) do 
		@a = ["",1,"", Object.new, :a]
		@b = Array.new(3,'A')
	end
	context "#all_empty?" do
		it "returns true if all elements of the Array are empty" do
			expect(["","",""].all_empty?).to be true
		end

		it "returns false if some of the Array elements are not empty" do
			expect(@a.all_empty?).to be false
		end

		it "returns true for an empty Array" do
			expect([].all_empty?).to be true
		end
	end

	context "#all_same?" do
		it "returns true if all elements of the Array are the same" do
			expect(@b.all_same?).to be true
		end

		it "returns false if some of the Array elements are not empty" do
			expect(@a.all_same?).to be false
		end

		it "returns true for an empty Array" do
			expect([].all_same?).to be true
		end
	end

	context "#any_empty?" do
		it "returns true if any of the elements of the Array are empty" do
			expect(@a.any_empty?).to be true
		end

		it "returns false if none of the elements of the Array are empty" do
			expect(["1",2,:b,Object.new].any_empty?).to be false
		end
	end

	context "#none_empty?" do
		it "returns true if none of the elements of the Array are empty" do
			expect(@b.none_empty?).to be true
		end

		it "returns false if any of the elements of the Array are not empty" do
			expect(@a.none_empty?).to be false
		end
	end

end