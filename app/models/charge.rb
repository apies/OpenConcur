class Charge < ActiveRecord::Base
  belongs_to :report
  belongs_to :user
end
