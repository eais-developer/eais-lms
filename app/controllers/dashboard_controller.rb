class DashboardController < ApplicationController
  before_action :authenticate_user!
  #before_action :trial_expired?
  def index
    @pagy, @books = pagy(Book.order(created_at: :desc), items: 5)
    @issues = Issue.all
    @students = Student.all
    @rooms = Room.all
  end
end
