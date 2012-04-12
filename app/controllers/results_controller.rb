class ResultsController < ApplicationController

  def show
    #@teacher = Teacher.all(:conditions => { :id => params[:id] }).first
    @teacher = Teacher.find(params[:id])

    @questions = Evaluation.all(  :select => "items.name, round(avg(evaluation_details.grade),1) as avg_grade",
                              :joins => "JOIN evaluation_details on evaluation_details.evaluation_id = evaluations.id JOIN forms on evaluations.form_id = forms.id JOIN items on items.form_id = forms.id and evaluation_details.item_id = items.id",
                              :conditions => { :teacher_id => params[:id] },
                              :group => "items.name",
                              :order => "items.id ASC")

    @comments = Evaluation.all(:conditions => { :teacher_id => params[:id] })

    if @questions.count == 0
      redirect_to('/results', :notice => "El profesor seleccionado no ha sido evaluado") and return
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @results }
    end
  end  

  def index
    #@teachers = Teacher.joins(:evaluations).select("distinct(teachers.id)")

    #@teachers = Teacher.find(:all, :order => "names ASC, last_name ASC, second_last_name ASC")
    @teachers = Teacher.all(  :select => "teachers.id, teachers.names, teachers.last_name, teachers.second_last_name, count(evaluations.id) as count_evaluations",
                              :joins => "LEFT JOIN evaluations on evaluations.teacher_id = teachers.id",
                              :group => "teachers.id, teachers.names, teachers.last_name, teachers.second_last_name",
                              :order => "2 ASC, 3 ASC, 4 ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @results }
    end
  end

  def last

    @results = Teacher.all( :select => "teachers.id, teachers.names, teachers.last_name, teachers.second_last_name, count(evaluations.id) as count_evaluations", 
                            :joins => :evaluations, 
                            :group => "teachers.id, teachers.names, teachers.last_name, teachers.second_last_name", 
                            :limit => 5, 
                            :order => "evaluations.created_at DESC, 2 ASC, 3 ASC, 4 ASC")

    respond_to do |format|
      format.html # last.html.erb
      format.json { render json: @results }
    end
  end

end