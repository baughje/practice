require "stats"


class StatRunner
  
  def poll
    loop do
      data_array = []
      File.new("samples.txt", "r").each { |line| data_array << line.chomp }
    end
  end

  def results
    @stats.sample_size
    puts "The result is #{ result }"

  end

end
