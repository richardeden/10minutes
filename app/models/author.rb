class Author < ActiveRecord::Base
  has_one :user
end
