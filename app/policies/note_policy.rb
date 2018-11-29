class NotePolicy < ApplicationPolicy

  def create?
    #record is the @note
    #user is the current_user
    #@note.user == current_user
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
