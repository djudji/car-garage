module SlotsHelper
  def slot_class(slot)
    slot.occupied ? "danger" : "success"
  end
end
