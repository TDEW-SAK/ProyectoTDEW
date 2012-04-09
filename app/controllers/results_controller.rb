class ResultsController < ApplicationController

  def index
    @results = Evaluation.find(:all, :order => "created_at DESC")

    if @results.count > 0
    	@results.select(:id).uniq.limit(5)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @results }
    end
  end

end