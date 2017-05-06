class TodoList
  def initialize(item)
    @item = item
  end

  def get_items
    @item
  end

  def add_item(item)
    @item << item
  end

  def delete_item(item)
    @item.delete(item)
  end

  def get_item(index)
    @item[index]
  end
end