class MaleHonorificStrategy
    def matches?(entity)
    entity.kind_of?(Male)
  end

  def display_honorific(entity)
    "Mr. #{entity.description}"
  end
end

