class JudyHonorificStrategy
  def matches(entity)
    if entity.class.name == "Female" and entity.name == "Judy"
      true
    else
      false
    end
  end

  def display_honorific(entity)
    "Judge #{entity.description}"
  end
end

