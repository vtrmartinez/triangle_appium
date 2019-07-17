class TriangleScreen
    include RSpec::Matchers

    def initialize
        @side1 = id('txtLado1')
        @side2 = id('txtLado2')
        @side3 = id('txtLado3')
        @calculate_button = id('btnCalcular')
        @result = id('txtResultado')
    end

    def verify_app_home
        expect(@side1.displayed?).to be true
        expect(@side2.displayed?).to be true
        expect(@side3.displayed?).to be true
    end

    def fill_side1(value)
        @side1.send_keys(value)
    end

    def fill_side2(value)
        @side2.send_keys(value)
    end

    def fill_side3(value)
        @side3.send_keys(value)
    end

    def calculate
        @calculate_button.click
    end

    def validate_message(expected_message)
        expect(@result.text).to include expected_message
    end
end