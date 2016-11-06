class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
def index
  @companies = Company.all
  if params[:name]
    @companies = Company.search(params[:name],params[:price],params[:region]).order("created_at DESC")
  
  else
    @companies = Company.all.order("created_at DESC")
  end
end
  # GET /companies/1
  # GET /companies/1.json
  def show
    @image = CompanyAttachment.where(company_id: @company.id).all
    @room = Room.all

  end

  # GET /companies/new
  def new
    @company = Company.new
       @company_attachment = @company.company_attachments.build

  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)
   @company.user_id = current_user.id
   @company.region_id = params[:region_id]
    respond_to do |format|
      if @company.save
       params[:company_attachments]['image'].each do |a|
          @company_attachment = @company.company_attachments.create!(:image => a)
       end
       format.html { redirect_to @company, notice: 'Post was successfully created.' }
     else
       format.html { render action: 'new' }
     end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :about, :slide, :logo, :image, :adress, :user_id,:price, :phone, :facebook, :youtube, :web_site, :floor, :region_id, :part,company_attachments_attributes:[:image,:_destroy,:id])
    end
end
