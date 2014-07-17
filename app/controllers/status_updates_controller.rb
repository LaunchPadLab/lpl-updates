class StatusUpdatesController < ApplicationController
  before_action :set_status_update, only: [:show, :edit, :update, :destroy]

  def create
    @status_update = StatusUpdate.new(status_update_params)

    respond_to do |format|
      if @status_update.save
        format.html { redirect_to company_path(6), notice: 'Status updated!' }
        format.json { render :show, status: :created, location: @status_update }
      else
        format.html { redirect_to company_path(6), notice: 'Sorry, there was an issue updating the status.'}
        format.json { render json: @status_update.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @status_update.update(status_update_params)
        format.html { redirect_to @status_update, notice: 'Status update was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_update }
      else
        format.html { render :edit }
        format.json { render json: @status_update.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @status_update.destroy
    respond_to do |format|
      format.html { redirect_to status_updates_url, notice: 'Status update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_update
      @status_update = StatusUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_update_params
      params.require(:status_update).permit(:description, :project_id, :user_id)
    end
end
