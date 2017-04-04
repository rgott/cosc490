class MainController < ApplicationController
  def index

    @requirement = Requirement.all
  end
end
