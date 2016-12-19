class SourceKeywordsController < ApplicationController
  before_action :set_source_keyword, only: [:show, :edit, :update, :destroy]

  # GET /source_keywords
  # GET /source_keywords.json
  def index
    @source_keywords = SourceKeyword.all
  end

  # GET /source_keywords/1
  # GET /source_keywords/1.json
  def show
  end

  # GET /source_keywords/new
  def new
    @source_keyword = SourceKeyword.new
  end

  # GET /source_keywords/1/edit
  def edit
  end

  # POST /source_keywords
  # POST /source_keywords.json
  def create
    @source_keyword = SourceKeyword.new(source_keyword_params)

    respond_to do |format|
      if @source_keyword.save
        format.html { redirect_to @source_keyword, notice: 'Source keyword was successfully created.' }
        format.json { render :show, status: :created, location: @source_keyword }
      else
        format.html { render :new }
        format.json { render json: @source_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_keywords/1
  # PATCH/PUT /source_keywords/1.json
  def update
    respond_to do |format|
      if @source_keyword.update(source_keyword_params)
        format.html { redirect_to @source_keyword, notice: 'Source keyword was successfully updated.' }
        format.json { render :show, status: :ok, location: @source_keyword }
      else
        format.html { render :edit }
        format.json { render json: @source_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_keywords/1
  # DELETE /source_keywords/1.json
  def destroy
    @source_keyword.destroy
    respond_to do |format|
      format.html { redirect_to source_keywords_url, notice: 'Source keyword was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_keyword
      @source_keyword = SourceKeyword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def source_keyword_params
      params.require(:source_keyword).permit(:source_id, :keyword_id)
    end
end
