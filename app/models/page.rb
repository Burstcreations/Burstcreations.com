class Page < ActiveRecord::Base
  attr_accessible :slug, :title

  has_many :entries
  belongs_to :admin
end
