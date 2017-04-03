class NotesController < ApplicationController
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
    @note = Note.find(params[:id])
  end

  def update
    note = Note.find(params[:id])
    note.text = params[:note][:text]
    note.save

    redirect_to notes_list_path
  end
end
