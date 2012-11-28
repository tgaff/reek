require File.join(File.dirname(File.dirname(File.dirname(File.expand_path(__FILE__)))), 'spec_helper')

include Reek
include Reek::Spec
include Spec::Matchers

def check_for_reek(file)
  file.should_not reek
end

describe 'Bug, Psych raises TypeError' do
  # the bug in this is currently rescued in code_parser.rb
  #       this test will fail if that rescue is removed
  # TODO: track-down and implement a REAL solution
  describe 'parsing the file' do
    @buggy_file = File.new('spec/samples/bugs/type_error_in_psych.rb')
    lambda { @buggy_file.should reek }.should_not raise_exception TypeError
  end
end
