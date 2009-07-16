class Canzone < ActiveRecord::Base

  named_scope :manca, :conditions => {:celo => 'false'}
end
