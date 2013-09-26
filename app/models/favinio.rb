class Favinio < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :votes, dependent: :destroy
end
