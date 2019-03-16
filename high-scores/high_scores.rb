class HighScores

  attr_reader :scores, :latest, :highest, :top, :report

  def initialize a
    @scores = a
    @latest = a.last
    @highest = a.max
    @top = a.sort_by { |n| n }.reverse[0..2]
    @report = report
  end

  private

  def report
    response = "Your latest score was #{@latest}. "

    if @latest == @highest
      response += "That's your personal best!"
    elsif @latest < @highest
      response += "That's #{@highest - @latest} short of your personal best!"
    end

    return response
  end

end