class DataTransfer
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  
  def persisted?
    false
  end
  
  attr_accessor :keyword
    
  def initialize(hsh = {})
    hsh.each do |key, value|
      self.send(:"#{key}=", value)
    end
  end
end