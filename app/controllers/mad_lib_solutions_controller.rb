class MadLibSolutionsController < ApplicationController
  # GET /mad_libs/:mad_lib_id/solutions/new
  def new
    @mad_lib = MadLib.find(params[:mad_lib_id].to_i)
    @page_name = "Fill In a Mad Lib"
    render action: 'new'
  end

  # POST /mad_libs/:mad_lib_id/solutions
  # POST /mad_libs/:mad_lib_id/solutions.json
  def create
    @mad_lib = MadLib.where(:id => params[:mad_lib_id].to_i).first
    @solution = @mad_lib.solutions.create

    params.select { |key, value| @mad_lib.has_field? key }.each do |key, value|
      @solution.fill_field key, :with => value
    end

    respond_to do |format|
      if @solution.save
        format.html do
          solution_path = mad_lib_solution_path :mad_lib_id => @mad_lib.id, :id => @solution.id
          redirect_to solution_path, notice: 'Your solution has been created.'
        end
        format.json { render json: @solution, status: created, location: @solution }
      else
        format.html { render action: 'new' }
        format.json { render json: @solution.errors, status: unprocessable_entity }
      end
    end
  end

  # GET /mad_libs/:mad_lib_id/solutions/:solution_id
  # GET /mad_libs/:mad_lib_id/solutions/:solution_id.json
  def show
    @mad_lib = MadLib.where(:id => params[:mad_lib_id].to_i).first
    @solution = MadLibSolution.where(:id => params[:id].to_i).first
    render action: 'show'
  end
end
