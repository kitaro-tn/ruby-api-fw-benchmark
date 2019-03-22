class AccountsController < ApplicationController
  def index
    limit = if params[:limit].blank?
              100
            else
              params[:limit].to_i
            end
    @accounts = Account.get_dummy(limit)
    render json: @accounts
  end
end
