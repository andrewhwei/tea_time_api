class Tea < ActiveRecord::Base
  validates :name, :origin, presence: true
end
