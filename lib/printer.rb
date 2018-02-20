require 'csv'
require 'pry'

class Printer
# print a table to the terminal with the count, date of earliest violation, and date of latest violation for each violation type

  attr_reader :violations

  def initialize(file = "./data/Violations-2012.csv")
    @violations = CSV.open(file, headers: true, header_converters: :symbol)
  end

  def count_violations
    @violations.count
  end

  def earliest_violation
    @violations.min do |row|
      DateTime.strptime(row[:violation_date], '%Y-%m-%d')
    end
  end

  def latest_violation
    @violations.max do |row|
      DateTime.strptime(row[:violation_date], '%Y-%m-%d')
    end
  end

  def violation_types
    @violations.map do |row|
      row[:violation_type]
    end.uniq
  end

  def violations_by_type
    by_type = {}
    violation_types.each do |violation_type|
      @violations.rewind
      by_type[violation_type.to_sym] = @violations.select do |row|
        row[:violation_type] = violation_type
      end
    end
    by_type
  end
end
