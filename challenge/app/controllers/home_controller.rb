class HomeController < ApplicationController
  def index
    @transaction = Transaction.all
  end
end
