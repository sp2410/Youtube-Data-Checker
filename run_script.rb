require './lib/data_processor'
puts DataProcessor.new.yt_data_checker(ARGV[0], ARGV[1], concern = ARGV[2])