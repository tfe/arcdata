class DataFilter < ActiveRecord::Base
  def pattern
    pattern_raw && Regexp.new(pattern_raw, true) # true => Case Insensitive
  end
end
