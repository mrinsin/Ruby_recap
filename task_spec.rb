require 'rspec'
require_relative "task"

#As a developer, I can create a task
describe Task do

  it "should be a thing" do
    expect{Task.new}.to_not raise_error
  end

  #Story: As a developer, I can give a Task a title and retrieve it.
  it "should have a title" do
    task1 = Task.new

    task1.title= "First Task"
    expect(task1.title).to eq "First Task"
  end

  #Story: As a developer, I can give a Task a description and retrieve it.
  it "should have a description" do
    task1 = Task.new

    task1.description= "This is my first task"
    expect(task1.description).to eq "This is my first task"
  end
  
end
