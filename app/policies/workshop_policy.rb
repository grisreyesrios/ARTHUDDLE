class WorkshopPolicy < ApplicationPolicy
  def show?
    true
  end

  def update?
    workshop.user == user
  end

  def create?
    workshop.user == user
  end

  def new?
    workshop.user == user
  end

  def destroy
    workshop.user == user
  end

  def workshop
    # record is an instance of Space
    record
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
