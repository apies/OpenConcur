class Report < ActiveRecord::Base
  has_many :charges
  belongs_to :user
  accepts_nested_attributes_for :charges
end
