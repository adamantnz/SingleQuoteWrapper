class PagesController < ApplicationController
  def home
    if params[:x].present?
    @input = "#{params[:x]}"
    @input = @input.upcase
    @input2 = @input.split(" ").map {|a| "'#{a}',\n"}.join # works OK
    @input3 = @input2[0,(@input2.length-2)]
    end

  end

end
