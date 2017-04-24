require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    it('returns false if it is not a triangle') do
      test_triangle = Triangle.new(2,2,3950249085)
      expect(test_triangle.triangle?()).to(eq("false"))
    end
  end
  describe('#equilateral?') do
    it('returns true if it is an equilateral') do
      test_triangle = Triangle.new(2,2,2)
      expect(test_triangle.equilateral?()).to(eq("true"))
    end
  end
  describe('#isosceles?') do
    it('returns true if it is an isosceles triangle') do
      test_triangle = Triangle.new(2,3,2)
      expect(test_triangle.isosceles?()).to(eq("true"))
    end
  end
  describe('#scalene?') do
    it('returns true if it is an scalene triangle') do
      test_triangle = Triangle.new(2,3,4)
      expect(test_triangle.scalene?()).to(eq("true"))
    end
  end
end
