require 'singleton'
module ChangeFinal

    class ConversionError < StandardError
    end
    class Different
      include Singleton
    # lookup table
    CONVERSIONS = {
      kg: {
        pounds: 2.20462,
        stone: 0.157473,
      },
      pounds: { 
        kg: 0.453592,
        stone: 0.0714286
      },
      stone: {
        kg: 6.35029,
        pounds: 14  
      }
    }
  
    def convert(value, from, to:)
      raise ConversionError, "Value is not numeric" unless value.is_a? Numeric
      raise ConversionError, "Value #{value} is not positive" unless value >= 0
      "#{value * conversion_ratio(from, to) }#{to.to_s}"
    end

    def conversions(value, unit)
        CONVERSIONS[unit].keys.map do |other_unit|
          convert(value, unit, to: other_unit)
        end
      end
  
    private
    def conversion_ratio(from, to)
      begin
        CONVERSIONS.fetch(from).fetch(to)
      rescue KeyError
        raise ConversionError, "Cannot convert #{from.to_s} to #{to.to_s}"
      end
    end
  end
  end
