class User < ApplicationRecord
  
  def mood 
    if self.nausea > self.happiness
      return "sad"
    else 
      return "happy"
    end
  end
end
