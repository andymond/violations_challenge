require 'csv'
class Printer
'print a table to the terminal with the count, date of earliest violation, and date of latest violation for each violation type'

  attr_reader :violations

  def initialize(file = "./data/Violations-2012.csv")
    @violations = CSV.open(file, headers: true, header_converters: :symbol)
  end

  def count_violations
    @violations.count
  end
end
