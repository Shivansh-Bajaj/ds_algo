require "test/unit"
require_relative "linked_list"

class TestLinkedList < Test::Unit::TestCase
  def test_add_item_to_linked_list
    add_item_instance = LinkedList.new
    add_item_instance.add_item(4)
    assert_equal(4, add_item_instance.head.data)
  end

  def test_remove_item
    remove_item_instance = LinkedList.new
    remove_item_instance.add_item(4)
    assert_includes(remove_item_instance.remove_item(4), "deleted")
  end
end
