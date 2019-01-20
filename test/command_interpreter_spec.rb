require 'minitest/spec'
require 'minitest/autorun'
require_relative '../libs/command_interpreter'


describe CommandInterpreter do
  it 'interpret exit' do
    output = CommandInterpreter.interpret("exit")
    assert_equal "exit", output[0]
  end
  it 'interpret info' do
    output = CommandInterpreter.interpret("info")
    assert_equal "info", output[0]
  end

  it 'interpret play' do
    output = CommandInterpreter.interpret("play something")
    assert_equal "play track", output[0]
    assert_equal "something", output[1]
  end

  it 'interpret info track' do
    output = CommandInterpreter.interpret("info track something")
    assert_equal "info track", output[0]
    assert_equal "something", output[1]
  end

  it 'interpret info artist' do
    output = CommandInterpreter.interpret("info artist something")
    assert_equal "info artist", output[0]
    assert_equal "something", output[2]
  end


end