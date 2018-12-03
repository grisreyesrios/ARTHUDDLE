class NotesController < ApplicationController
  # def new
  #   @workshop = Workshop.find(params[:workshop_id])
  #   @workshop = @booking.workshop
  #   @note = Note.new
  # end

  def index
    @workshop = Workshop.find(params[:workshop_id])
    @notes = policy_scope(Note).where(workshop: @workshop)
  end

  def delete
    @note = Note.find(params[:note_id])
    @note.destroy
  end

  def update
    if @note.update(note_params)
      redirect_to workshop_notes_path(@workshop), notice: 'Note updated'
    else
      render :edit
    end
  end

  def create
    @workshop = Workshop.find(params[:workshop_id])
    @note = Note.new(note_params)
    @note.workshop = @workshop
    @note.user = current_user
    authorize @note
    if @note.save!
      redirect_to workshop_notes_path(@workshop)
    else
      @notes = policy_scope(Note).where(workshop: @workshop)
      render :index
    end
  end

  private

  def note_params
    params.require(:note).permit(:content, :title)
  end
end
