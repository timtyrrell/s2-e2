class MaleHonorificStrategy
  def matches(entity)
    if entity.class.name == "Male"
      true
    else
      false
    end
  end

  def display_honorific(entity)
    "Mr. #{entity.description}"
  end
end

