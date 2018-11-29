class WorkshopPolicy < ApplicationPolicy
  def show?
    true
  end

  def update?
    workshop.user == user
  end

  def create?
    true
  end

  def new?
    true
  end

  def favourited?
    true
  end

  def destroy
    workshop.user == user
  end

  def workshop
    # record is an instance of
    record
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
