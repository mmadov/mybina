class AkciyasController < InheritedResources::Base

  private

    def akciya_params
      params.require(:akciya).permit(:title, :text, :image, :company_id, :desc)
    end
end

