class PageController < ApplicationController
  def index
    @companies = []
    if params[:query].present?
      _query = "%#{params[:query]}%"
      @companies = Company.where("registry_number LIKE ? OR name LIKE ? OR city LIKE ?", _query, _query, _query)
      if turbo_frame_request?
        render partial: 'page/search_results', locals: { companies: @companies }
      end
    end
  end
end
