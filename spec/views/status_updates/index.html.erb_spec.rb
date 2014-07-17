require 'rails_helper'

RSpec.describe "status_updates/index", :type => :view do
  before(:each) do
    assign(:status_updates, [
      StatusUpdate.create!(
        :description => "MyText",
        :project => nil,
        :user => nil
      ),
      StatusUpdate.create!(
        :description => "MyText",
        :project => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of status_updates" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
