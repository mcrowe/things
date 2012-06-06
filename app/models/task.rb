class Task < ActiveRecord::Base
  attr_accessible :complete, :points, :title
end
