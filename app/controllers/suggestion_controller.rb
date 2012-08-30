class SuggestionController < ApplicationController
  skip_before_filter :authorize

  def index
    @charities = Charity.all
  end
end
