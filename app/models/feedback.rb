class Feedback < ActiveRecord::Base
   attr_accessible  :name, :email, :phone, :comment, :score
end
