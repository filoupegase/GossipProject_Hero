
require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.create(city_id: 1, first_name: "John", last_name: "Doe", description: "Blablabla", email: "missmarg@hotmail.com", age: 21)
  end

context "associations" do

  describe "gossips" do
    it "should have_many gossips" do
      gossip = Gossip.create(user: @user, title: "title", content: "content")
      expect(@user.gossips.include?(gossip)).to eq(false)
    end
  end

  context "validation" do

    # it "is valid with valid attributes" do
    #   expect(@gossip).to be_a(Gossip)
    #   expect(@gossip).to be_valid
    # end

    describe "#title" do
      it "should not be valid without title" do
        bad_gossip = Gossip.create(content: "Blablabla")
        expect(bad_gossip).not_to be_valid
        expect(bad_gossip.errors.include?(:title)).to eq(true)
      end
    end

    describe "#content" do
      it "should not be valid without content" do
        bad_gossip = Gossip.create(title: "Blabla")
        expect(bad_gossip).not_to be_valid
        expect(bad_gossip.errors.include?(:content)).to eq(true)

      end
    end


end

end
end
