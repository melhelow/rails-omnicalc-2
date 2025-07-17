class SubtractionController < ApplicationController
  def show_subtraction_form
    render({ :template => "subtraction_templates/show_subtraction_form" })
  end

  def subtract_these
    # Match form parameter names
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f
    @result = @second_number - @first_number

    render({ :template => "subtraction_templates/sub_results" })
  end
end
