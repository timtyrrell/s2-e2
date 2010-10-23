class DefaultHonorificStrategy
  def matches?(entity)
    true
  end

  def display_honorific(entity)
    entity.description
  end
end

