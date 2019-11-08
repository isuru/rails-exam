class TransactionsController < ApplicationController
  def index
    redirect_to transactions_charges_path
  end

  def charges
    render plain: "Charges"
  end
end
