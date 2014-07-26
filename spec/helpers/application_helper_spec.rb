require 'spec_helper'
require 'rails_helper'

describe ApplicationHelper do
  
  describe "full_title" do
    it "includes the page title" do
      expect(full_title("quux")).to match(/quux/)
    end

    it "includes the base title" do
      expect(full_title("quux")).to match(/^Ruby on Rails Tutorial Sample App/)
    end

    it "does not include a bar for the home page" do
      expect(full_title('')).not_to match(/\|/)
    end
  end

end