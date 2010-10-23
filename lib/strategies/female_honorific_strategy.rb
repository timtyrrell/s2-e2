class FemaleHonorificStrategy
  def matches?(entity)
    entity.kind_of?(Female)
  end

  def display_honorific(entity)
    "Ms. #{entity.description}"
  end
end

