defmodule FilterListTest do
  use ExUnit.Case

  describe "filter/1" do
    test "return the number of odd numbers in the list" do
      list1 = ["test1", "test2", 1, 2, 3, 4]
      list2 = [1, 3, 5, 7, 9, 11]
      list3 = [2, 4, 6, 8, 10]
      list4 = []

      assert FilterList.filter(list1) == 2
      assert FilterList.filter(list2) == 6
      assert FilterList.filter(list3) == 0
      assert FilterList.filter(list4) == 0
    end
  end
end
