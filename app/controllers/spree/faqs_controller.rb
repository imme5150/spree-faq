module Spree
  class FaqsController < Spree::BaseController
    helper 'spree/base'

    def index
      @categories = QuestionCategory.all :include => :questions
    end
  
    def show
      @category = QuestionCategory.find_by_name params[:category], :include => :questions
      return redirect_to :faq unless @category
    end

    def accurate_title
      I18n.t 'frequently_asked_questions'
    end
    
  end
end