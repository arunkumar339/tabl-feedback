class FeedbacksController < ApplicationController
  def index
    respond_to do |format|
        format.html { render :layout => false }
    end
  end
  
  def create
    @feedback=Feedback.new(:name=>params[:name],:email=>params[:email],:phone=>params[:phone],:comment=>params[:comment],:score=>params[:score])
    @feedback.reference_number="TH"+rand(1000..9999).to_s
    if @feedback.save!
      render :text => {:name=>@feedback.name,:reference_number=>@feedback.reference_number}.to_json
    end
  end
end
