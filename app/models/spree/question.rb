module Spree
  class Question < ActiveRecord::Base
    belongs_to :question_category
    acts_as_list
    default_scope :order => "position ASC"
    
    attr_accessible :question, :answer
    
    validates_presence_of :question_category_id, :question, :answer
  end
end