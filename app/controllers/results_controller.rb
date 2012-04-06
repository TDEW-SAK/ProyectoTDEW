class ResultsController < ApplicationController

  def index
    @results = Evaluation.find(:all, :order => "created_at DESC", :limit => "5")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @results }
    end
  end

end