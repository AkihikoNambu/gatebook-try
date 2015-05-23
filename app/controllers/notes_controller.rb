class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
  end

  def create
    @note = Note.new
    @note.title = params[:title]
    @note.content = params[:content]
    @note.save
    redirect_to show_note_path(@note)
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.title = params[:title]
    @note.content = params[:content]
    @note.save
    redirect_to show_note_path(@note.id)
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    redirect_to notes_path
  end
end
