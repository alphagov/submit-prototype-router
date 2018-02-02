class HomeController < ApplicationController
  def index
    @number_of_submissions = Submission.count
  end
end
