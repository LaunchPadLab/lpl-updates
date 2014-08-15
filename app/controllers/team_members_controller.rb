class TeamMembersController < ApplicationController
  def create
    @team_member = TeamMember.new(team_member_params)

    respond_to do |format|
      if @team_member.save
        format.html { redirect_to @team_member.project, notice: "Team member added!" }
        format.json { render :show, status: :created, location: @team_member }
      else
        format.html { redirect_to new_team_member_path }
        format.json { render json: @team_member.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @team_member.update(team_member_params)
        format.html { redirect_to @team_member.project, notice: "Team member updated!" }
        format.json { render :show, status: :ok, location: @team_member }
      else
        format.html { render :edit }
        format.json { render json: @team_member.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @team_member.destroy
    respond_to do |format|
      format.html { redirect_to @team_member.project, notice: "#{@team_member.user.username} was removed from this project." }
      format.json { head :no_content }
    end
  end


  private
    def set_team_member
      @team_member = TeamMember.find(params[:id])
    end

    def team_member_params
      params.require(:team_member).permit(:project_id, :user_id, :username, :project_lead)
    end
end
