class API::V1::NotesController < ApplicationController
  def index
    @notes = Note.all
    respond_to :json
  end

  def show
    @note = Note.find params[:id]
    respond_to :json
  end
end
