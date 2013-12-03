require 'spec_helper'

IGNORE_BASENAMES = %w(. ..).freeze

describe Page do
  describe "::IGNORE_BASENAMES" do
    it "is ['.', '..']" do
      expect(Page::IGNORE_BASENAMES).to eq(IGNORE_BASENAMES)
    end
  end

  describe "::page_files" do
    it "returns all the correct page files" do
      basenames = Dir.entries(Rails.root.join('app', 'views', HighVoltage.content_path)) - IGNORE_BASENAMES
      expect(Page.page_files.map{|page_file| File.basename(page_file.path)}).to eq(basenames)
    end
  end
end
