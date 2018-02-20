require "./lib/printer"
require "minitest"
require "minitest/autorun"
require "minitest/pride"

class PrinterTest < Minitest::Test

  def test_it_exists
    printer = Printer.new

    assert_instance_of Printer, printer
  end
end
