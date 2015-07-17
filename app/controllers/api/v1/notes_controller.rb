class API::V1::NotesController < API::V1::APIController
  before_action :authorize_api_key

  def index
    @notes = current_api_user.notes.ordered
    respond_to :json
  end

  def show
    @note = current_api_user.notes.find params[:id]
    respond_to :json
  end
end
