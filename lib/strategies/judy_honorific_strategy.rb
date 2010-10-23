class JudyHonorificStrategy
  def matches?(entity)
    entity.kind_of?(Female) and entity.name == "Judy"
  end

  def display_honorific(entity)
    "Judge #{entity.description}"
  end
end

