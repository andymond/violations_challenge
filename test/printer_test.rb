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
end
