class CompanyAttachmentsController < ApplicationController
  before_action :set_company_attachment, only: [:show, :edit, :update, :destroy]

  # GET /company_attachments
  # GET /company_attachments.json
  def index
    @company_attachments = CompanyAttachment.all
  end

  # GET /company_attachments/1
  # GET /company_attachments/1.json
  def show
  end

  # GET /company_attachments/new
  def new
    @company_attachment = CompanyAttachment.new
  end

  # GET /company_attachments/1/edit
  def edit
  end

  # POST /company_attachments
  # POST /company_attachments.json
  def create
    @company_attachment = CompanyAttachment.new(company_attachment_params)

    respond_to do |format|
      if @company_attachment.save
        format.html { redirect_to @company_attachment, notice: 'Company attachment was successfully created.' }
        format.json { render :show, status: :created, location: @company_attachment }
      else
        format.html { render :new }
        format.json { render json: @company_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_attachments/1
  # PATCH/PUT /company_attachments/1.json
  def update
    respond_to do |format|
      if @company_attachment.update(company_attachment_params)
        format.html { redirect_to @company_attachment, notice: 'Company attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_attachment }
      else
        format.html { render :edit }
        format.json { render json: @company_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_attachments/1
  # DELETE /company_attachments/1.json
  def destroy
    @company_attachment.destroy
    respond_to do |format|
      format.html { redirect_to company_attachments_url, notice: 'Company attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_attachment
      @company_attachment = CompanyAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_attachment_params
      params.require(:company_attachment).permit(:company_id, :image)
    end
end
