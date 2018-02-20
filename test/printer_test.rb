require "./lib/printer"
require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "pry"

class PrinterTest < Minitest::Test

  def test_it_exists
    printer = Printer.new

    assert_instance_of Printer, printer
  end

  def test_it_can_count_violations
    printer = Printer.new

    assert_equal 545, printer.count_violations
  end

  def test_it_can_return_earliest_violation_date
    printer = Printer.new

    assert_equal "2012-01-03 00:00:00", printer.earliest_violation[:violation_date]
  end

  def test_it_can_return_latest_violation_date
    printer = Printer.new

    assert_equal "2012-11-01 00:00:00", printer.latest_violation[:violation_date]
  end
end
