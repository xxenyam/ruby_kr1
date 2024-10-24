require "rspec"

class Student
  def initialize (name, grades)
    @name = name
    @grades = grades
  end

  def calculate_average_grade
    return 0.0 if @grades.empty?
    (@grades.sum.to_f / @grades.size).round(2)
  end
end

RSpec.describe Student do
  describe "#calculate_average_grade" do
    it "calculates the average grade correctly" do
      student = Student.new("Kseniia", [54, 67, 93, 85])
      expect(student.calculate_average_grade).to eq(74.75)
    end

    it "returns 0.0 if there are no grades" do
      student = Student.new("Kseniia", [])
      expect(student.calculate_average_grade).to eq(0.0)
    end

    it "handles a single grade correctly" do
      student = Student.new("Kseniia", [90])
      expect(student.calculate_average_grade).to eq(90.0)
    end

    it "calculates average with float values in grades" do
      student = Student.new("Kseniia", [56.5, 78.2, 89.9])
      expect(student.calculate_average_grade).to eq(74.87)
    end
  end
end