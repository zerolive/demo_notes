class NotesController < ApplicationController

  before_action :find_note, only: [:edit, :update, :delete]

  def new
  end

  def create
    note = Note.new(text: params[:text])
    note.save

    redirect_to notes_list_path
  end

  def list
    @notes = Note.all
  end

  def edit
  end

  def update
    @note.update!(note_params)

    redirect_to notes_list_path
  end

  def delete
    @note.delete
    redirect_to notes_list_path
  end

  private

  def note_id
    params[:id]
  end

  def find_note
    @note = Note.find(note_id)
  end

  def note_params
    params.require(:note).permit(:text)
  end
end
