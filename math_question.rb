class Question
  attr_accessor :question, :answer

  def initialize
    @num_1 = nil
    @num_2 = nil
    @question = nil
    @answer = nil
  end

  def generate_question(name)
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @answer = @num_1 + @num_2
    @question = "#{name}: What does #{@num_1} plus #{@num_2} equal?"
  end
end

# question_1 = Question.new
# puts question_1.generate_question("hi")
# puts question_1.answer
# puts question_1.question
