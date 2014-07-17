require 'rails_helper'

RSpec.describe "status_updates/show", :type => :view do
  before(:each) do
    @status_update = assign(:status_update, StatusUpdate.create!(
      :description => "MyText",
      :project => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
