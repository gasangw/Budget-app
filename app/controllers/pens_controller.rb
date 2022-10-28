class PensController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @title = 'TomBudge'
  end
end
