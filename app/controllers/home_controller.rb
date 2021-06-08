class HomeController < ApplicationController
  def index

  end

  def counting
    @service = Savior::Counting.call(params)
  end

  def counting_index
    render 'index'
  end


  private
    def savior_params
      params.require(:savoir).permit(:age_death_a, :year_death_a, :age_death_b, :year_death_b)
    end
end
