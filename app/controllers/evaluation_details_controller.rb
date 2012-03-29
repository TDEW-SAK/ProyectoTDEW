class EvaluationDetailsController < ApplicationController
  # GET /evaluation_details
  # GET /evaluation_details.json
  def index
    @evaluation_details = EvaluationDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluation_details }
    end
  end

  # GET /evaluation_details/1
  # GET /evaluation_details/1.json
  def show
    @evaluation_detail = EvaluationDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluation_detail }
    end
  end

  # GET /evaluation_details/new
  # GET /evaluation_details/new.json
  def new
    @evaluation_detail = EvaluationDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluation_detail }
    end
  end

  # GET /evaluation_details/1/edit
  def edit
    @evaluation_detail = EvaluationDetail.find(params[:id])
  end

  # POST /evaluation_details
  # POST /evaluation_details.json
  def create
    @evaluation_detail = EvaluationDetail.new(params[:evaluation_detail])

    respond_to do |format|
      if @evaluation_detail.save
        format.html { redirect_to @evaluation_detail, notice: 'Evaluation detail was successfully created.' }
        format.json { render json: @evaluation_detail, status: :created, location: @evaluation_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @evaluation_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evaluation_details/1
  # PUT /evaluation_details/1.json
  def update
    @evaluation_detail = EvaluationDetail.find(params[:id])

    respond_to do |format|
      if @evaluation_detail.update_attributes(params[:evaluation_detail])
        format.html { redirect_to @evaluation_detail, notice: 'Evaluation detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluation_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_details/1
  # DELETE /evaluation_details/1.json
  def destroy
    @evaluation_detail = EvaluationDetail.find(params[:id])
    @evaluation_detail.destroy

    respond_to do |format|
      format.html { redirect_to evaluation_details_url }
      format.json { head :no_content }
    end
  end
end
