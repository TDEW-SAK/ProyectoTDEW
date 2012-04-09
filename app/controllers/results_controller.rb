class ResultsController < ApplicationController

  def index
    #@teachers = Teacher.joins(:evaluations).select("distinct(teachers.id)")

    @teachers = Teacher.find(:all, :order => "names ASC, last_name ASC, second_last_name ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @results }
    end
  end

  def last
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