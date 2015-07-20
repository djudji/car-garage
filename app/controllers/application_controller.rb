class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :update_slots

  private
  def update_slots
    Slot.all.each do |slot|
      if slot.vehicle == nil 
        slot.update(occupied: false) unless !slot.occupied
      else 
        slot.update(occupied: true) unless slot.occupied
      end
    end
  end
end
