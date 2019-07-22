Given('I launch app') do
  @page.call(TriangleScreen).verify_app_home
end

When('I fill the sides of the equilateral triangle') do
  @page.call(TriangleScreen).fill_side1(1)
  @page.call(TriangleScreen).fill_side2(1)
  @page.call(TriangleScreen).fill_side3(1)
  step 'I send the form'
end

When('I fill the sides of the isosceles triangle') do
  @page.call(TriangleScreen).fill_side1(1)
  @page.call(TriangleScreen).fill_side2(1)
  @page.call(TriangleScreen).fill_side3(2)
  step 'I send the form'
end

When('I fill the sides of the scalene triangle') do
  @page.call(TriangleScreen).fill_side1(1)
  @page.call(TriangleScreen).fill_side2(2)
  @page.call(TriangleScreen).fill_side3(3)
  step 'I send the form'
end

When('I send the form') do
  @page.call(TriangleScreen).calculate
end

Then('I must see the message {string}') do |expected_message|
  @page.call(TriangleScreen).validate_message expected_message
end
