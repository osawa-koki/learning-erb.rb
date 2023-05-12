require 'erb'

class Main

  def initialize
    @title = "Hello World"
    @fruits = ["apple", "banana", "orange", "grape", "strawberry"]
    @current_hour = Time.now.hour
  end

  def put_description
    "This is a description."
  end

  def Main
    template_file = File.read('template.erb')
    template = ERB.new(template_file)
    output = template.result(binding)
    File.open('./dist/index.html', 'w') do |file|
      file.puts output
    end
  end

end

Main.new.Main
