class TimeSectionsController < ApplicationController
  # GET /time_sections
  # GET /time_sections.json
  def index
    @time_sections = TimeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @time_sections }
    end
  end

  # GET /time_sections/1
  # GET /time_sections/1.json
  def show
    @time_section = TimeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @time_section }
    end
  end

  # GET /time_sections/new
  # GET /time_sections/new.json
  def new
    @time_section = TimeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @time_section }
    end
  end

  # GET /time_sections/1/edit
  def edit
    @time_section = TimeSection.find(params[:id])
  end

  # POST /time_sections
  # POST /time_sections.json
  def create
    @time_section = TimeSection.new(params[:time_section])

    respond_to do |format|
      if @time_section.save
        format.html { redirect_to @time_section, notice: 'Time section was successfully created.' }
        format.json { render json: @time_section, status: :created, location: @time_section }
      else
        format.html { render action: "new" }
        format.json { render json: @time_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /time_sections/1
  # PUT /time_sections/1.json
  def update
    @time_section = TimeSection.find(params[:id])

    respond_to do |format|
      if @time_section.update_attributes(params[:time_section])
        format.html { redirect_to @time_section, notice: 'Time section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @time_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_sections/1
  # DELETE /time_sections/1.json
  def destroy
    @time_section = TimeSection.find(params[:id])
    @time_section.destroy

    respond_to do |format|
      format.html { redirect_to time_sections_url }
      format.json { head :no_content }
    end
  end
end
