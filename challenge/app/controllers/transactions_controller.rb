class TransactionsController < ApplicationController
  def index
    redirect_to transactions_charges_path
  end

  def charges
    charges = Charge.includes(:customer)
    @paid_charges = charges.paid
    @refunded_charges = charges.refunded

    render formats: :json
  end
end
