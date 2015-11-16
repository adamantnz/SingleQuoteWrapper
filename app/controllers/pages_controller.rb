class PagesController < ApplicationController
  def home
    if params[:x].present?
    @input = "#{params[:x]}"
    @input = @input.upcase
    # Convert user list to upper case
    @input2 = @input.split(" ").map {|a| "'#{a}',\n"}.join
    # splits user input by white space,
    # wraps each item in single quotes and puts next item on a new line
    @userOutput = @input2[0,(@input2.length-2)]
    # takes substring of user input, and removes final comma as
    # SQL will not parse correctly if final list item has a comma after it.

    end

  end

end
