class Vote < ActiveRecord::Base
  attr_accessible :favinio_id
  belongs_to :favinio
end
