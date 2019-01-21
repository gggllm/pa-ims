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

  it 'interpret count tracks' do
    output = CommandInterpreter.interpret("count tracks by something")
    assert_equal "count tracks", output[0]
    assert_equal "something", output[2]
  end

  it 'interpret list tracks' do
    output = CommandInterpreter.interpret("list tracks by something")
    assert_equal "list tracks", output[0]
    assert_equal "something", output[2]
  end

  it 'interpret add track' do
    output = CommandInterpreter.interpret("add track something1 by something2")
    assert_equal "add track", output[0]
    assert_equal "something1", output[1]
    assert_equal "something2", output[2]
  end

  it 'interpret add artist' do
    output = CommandInterpreter.interpret("add artist something")
    assert_equal "add artist", output[0]
    assert_equal "something", output[2]
  end

end