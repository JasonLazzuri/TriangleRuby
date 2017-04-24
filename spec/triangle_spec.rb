require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle') do
    it('returns false if it is not a triangle') do
      test_triangle = Triangle.new(2,2,3950249085)
      expect(test_triangle.triangle()).to(eq("this is not a triangle"))
    end
  end
  describe('#triangle') do
    it('returns true if it is an equilateral') do
      test_triangle = Triangle.new(2,2,2)
      expect(test_triangle.triangle()).to(eq("equilateral"))
    end
  end
  describe('#triangle') do
    it('returns true if it is an isosceles triangle') do
      test_triangle = Triangle.new(2,3,2)
      expect(test_triangle.triangle()).to(eq("isosceles"))
    end
  end
  describe('#triangle') do
    it('returns true if it is an scalene triangle') do
      test_triangle = Triangle.new(2,3,4)
      expect(test_triangle.triangle()).to(eq("scalene"))
    end
  end
end
