class BookingPolicy < ApplicationPolicy
  def index?
    raise
    booking.user == user
  end

  def show?
    booking.user == user
  end

  def booking
    record
  end

  def create?
    record.user == user
  end

  def new?
    true
  end

  def edit?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
