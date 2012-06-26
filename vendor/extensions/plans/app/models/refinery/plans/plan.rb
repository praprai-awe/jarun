module Refinery
  module Plans
    class Plan < Refinery::Core::BaseModel
      self.table_name = 'refinery_plans'

      attr_accessible :name, :datetime, :upright, :photo, :description, :position, :photo_id

      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
