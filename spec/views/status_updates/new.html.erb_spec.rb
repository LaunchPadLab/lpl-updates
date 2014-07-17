require 'rails_helper'

RSpec.describe "status_updates/new", :type => :view do
  before(:each) do
    assign(:status_update, StatusUpdate.new(
      :description => "MyText",
      :project => nil,
      :user => nil
    ))
  end

  it "renders new status_update form" do
    render

    assert_select "form[action=?][method=?]", status_updates_path, "post" do

      assert_select "textarea#status_update_description[name=?]", "status_update[description]"

      assert_select "input#status_update_project_id[name=?]", "status_update[project_id]"

      assert_select "input#status_update_user_id[name=?]", "status_update[user_id]"
    end
  end
end
