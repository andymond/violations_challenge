require 'csv'
class Printer

  attr_reader :violations

  def initialize(file = "./data/Violations-2012.csv")
    @violations = CSV.open(file, headers: true, header_converters: :symbol)
  end
end
