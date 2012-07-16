class ReportsController < ApplicationController
  include ReportsHelper

  # GET /reports/usage
  def usage
    @page_name = "Mad Lib Statistics"
    @parts_of_speech_counts = parts_of_speech_counts
    @solution_word_counts = solution_word_counts
    render action: 'usage'
  end
end
