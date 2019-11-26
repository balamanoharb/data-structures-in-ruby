class SizeLimitReachedError < StandardError
  def initialize(ds, limit)
    super("#{ds} reached the given size limit #{limit}")
  end
end