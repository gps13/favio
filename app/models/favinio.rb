class Favinio < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :votes, dependent: :destroy
  auto_html_for :description do

    image
    youtube(:width => 400, :height => 250)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end
