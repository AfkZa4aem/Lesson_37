require 'spec_helper'

describe Comment do
  describe "validations" do
    it { should ensure_length_of(:body).is_at_most(400)}
  end

  describe "associations" do
    it { should belong_to :article }
  end
end