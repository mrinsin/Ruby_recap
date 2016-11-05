class Task

  def initialize
    @done = false
  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def description=(para)
    @description = para
  end

  def description
    @description
  end

  def done?
    @done
  end

  def is_done
    if @done == false
      @done = true
    elsif @done == true
      @done = false
    end
  end


end
