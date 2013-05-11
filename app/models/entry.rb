class Entry < ActiveRecord::Base
  attr_accessible :content, :title, :updated

  belongs_to :page
end
