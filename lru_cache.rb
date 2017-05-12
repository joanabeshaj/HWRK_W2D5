class LRUCache
  def initialize(size)
    @initial_size = size
    @cache = []
  end

  def count
    @cache.length
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
      @cache << el
    elsif @initial_size < count
      @cache.shift
      @cache << el
    end
  end

  def show
    p @cache
    nil
  end
  
end