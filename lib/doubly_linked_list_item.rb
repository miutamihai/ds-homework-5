class DoublyLinkedListItem
  attr_accessor :previous, :next, :value

  def initialize(value)
    @value = value
    @previous = @next = nil
  end

  def link_previous(item)
    item.next = self
    @previous = item
  end

  def link_next(item)
    item.previous = self
    @next = item
  end
end
