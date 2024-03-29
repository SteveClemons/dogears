require 'spec_helper'

describe "bookmarks/show" do
  before(:each) do
    @bookmark = assign(:bookmark, stub_model(Bookmark,
      :url => "Url",
      :name => "Name",
      :date => "Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Name/)
    rendered.should match(/Date/)
  end
end
