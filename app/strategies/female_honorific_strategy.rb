class FemaleHonorificStrategy
  def matches(entity)
    if entity.class.name == "Female"
      true
    else
      false
    end
  end

  def display_honorific(entity)
    "Ms. #{entity.description}"
  end
end

