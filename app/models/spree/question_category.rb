module Spree
  class QuestionCategory < ActiveRecord::Base
    acts_as_list 
    
    attr_accessible :name, :locale, :questions_attributes

    has_many :questions
    validates_uniqueness_of :name, :scope => :locale
    validates_presence_of :name

    accepts_nested_attributes_for :questions, :allow_destroy => true
  
    scope :locale, lambda { |locale| where(:locale => locale) }
  
  end
end
