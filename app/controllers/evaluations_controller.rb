class EvaluationsController < ApplicationController
  before_filter :check_auth, :only => [:index]
  before_filter :check_vote, :only => [:new]

  def check_auth
    if session[:user_id] == nil or session[:user_id].to_s.empty?
      redirect_to(:back, :notice => "Necesitas iniciar sesion para poder evaluar!!")
    end
  end

  def check_vote
    if Evaluation.all(:conditions => { :user_id => session[:user_id], :teacher_id => params[:teacher_id]}).count > 0
      redirect_to(:back, :notice => "Ya evaluaste a este profesor!!")
    end
  end

  # GET /evaluations
  # GET /evaluations.json
  def index
    @evaluations = Evaluation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluations }
    end
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
    @evaluation = Evaluation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluation }
    end
  end

  # GET /evaluations/new
  # GET /evaluations/new.json
  def new
    @teacher    = Teacher.find(params[:teacher_id])
    @evaluation = Evaluation.new
    @evaluation.teacher = @teacher
    @evaluation.form = Form.first

    @evaluation.form.items.all.each do |item|
      evd = EvaluationDetail.new  
      evd.item = item
      @evaluation.evaluation_details << evd
      evd = nil
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluation }
    end
  end

  # GET /evaluations/1/edit
  def edit
    @evaluation = Evaluation.find(params[:id])
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @evaluation = Evaluation.new(params[:evaluation])

    @evaluation.save

    @evaluation.evaluation_details.all.each do |detail|
      detail.save
    end

    respond_to do |format|
      if @evaluation.save
        #redirect_to(:root, :notice => "Gracias por registrar tu evaluacion!!")
        format.html { redirect_to details_path(@evaluation.teacher.id), notice: 'Gracias por registrar tu evaluacion!!' }
        #format.json { render json: @evaluation, status: :created, location: @evaluation }
      else
        format.html { render action: "new" }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evaluations/1
  # PUT /evaluations/1.json
  def update
    @evaluation = Evaluation.find(params[:id])

    respond_to do |format|
      if @evaluation.update_attributes(params[:evaluation])
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation = Evaluation.find(params[:id])
    @evaluation.destroy

    respond_to do |format|
      format.html { redirect_to evaluations_url }
      format.json { head :no_content }
    end
  end
end
