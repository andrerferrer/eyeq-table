class TestsController < ApplicationController
  def show
    @session = Session.last
  end
end
