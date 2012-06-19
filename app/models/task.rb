class Task < ActiveRecord::Base
  attr_accessible :title, :description, :order, :done, :created_at, :updated_at
end
