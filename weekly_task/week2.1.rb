# Student report card

module GradeCalculator
  def calculate_grade(marks)
    @marks = marks
    if @marks >= 0..100
      if @marks >= 90..100
        @grade = "A"
      elsif @marks >= 80..89
        @grade = "B"
      elsif @marks >= 70..79
        @grade = "C"
      elsif @marks >= 60..69
        @grade = "D"
      elsif @marks >= 50..59
        @grade = "E"
      elsif @marks >= 40..49
        @grade = "F"
      end
    end
  end

  def calculate_average(marks)
    @average_marks = (@total_marks/3)
  end
end

class Student
  include GradeCalculator
  def initialize(name)
    @name = name
    @total_marks = 0
    @total_subject_marks = Hash.new
  end

  def add_marks(subject, marks)
    @subject = subject
    @marks = marks


    @subject_marks = Hash[@subject => @marks]
    @total_subject_marks.each{|key,value| "#{key} #{value}"}
    @total_subject_marks = @total_subject_marks.merge(@subject_marks)


    @grade = Hash["Grade", @grade]
    @total_marks = @total_marks + @marks

    calculate_average(@total_marks)
  end

  def display_grade
    @Math = @total_subject_marks["Math"]
    @Science = @total_subject_marks["Science"]
    @English = @total_subject_marks["English"]

    puts
    calculate_grade(@marks)
    puts "Added marks for Math: #{@Math}"
    puts "Added marks for Science: #{@Science}"
    puts "Added marks for English: #{@English}"
    puts
    puts "Report Card for #{@name}:"
    puts
    puts "  Math: Mark = #{@Math}, Grade = #{calculate_grade(@Math)}"
    puts "  Science: Mark = #{@Science}, Grade = #{calculate_grade(@Science)}"
    puts "  English: mark = #{@English}, Grade = #{calculate_grade(@English)}"
    calculate_grade(@average_marks)
    puts
    puts "Average Marks: #{@average_marks}, Overall Grade:#{@grade}"
  end
end

student = Student.new("John Doe")
student.add_marks("Math", 85)
student.add_marks("Science", 92)
student.add_marks("English", 78)
student.display_grade
