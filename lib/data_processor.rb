require 'csv' 

class DataProcessor	

	attr_reader :hash1, :hash2 #mainly for testing the state of hashes

	def initialize
		@hash1 = Hash.new
		@hash2 = Hash.new		

	end

	# The only public interface for users as per requirements

	def yt_data_checker(file1, file2, concern = nil)
		if file1 and file2		
			read_file(file1, @hash1)
			read_file(file2, @hash2)			
			return find_different(concern)
		else
			[]
		end
	end
	
	#Note: The methods below are supposed to be under private methods. But for unit testing and simplicity I am exposing them here.
	#When writing tests, I would have to use send method and that would reduce readability of the testing code. So for the tests to pass,
	#I am leaving them as public methods

	
	#private

	#these method need not be seen by the outside classes but for the sake of simplicity and unit testing, I am leaving them as public.

	#reads first file and stores in a hash
	def read_file(file, hash_d)
		CSV.foreach(file, headers: true) do |row|	
			row = row.to_hash
			row[" Subscriber Count"] = row[" Subscriber Count"].gsub(",","")
		 	hash_d[row["Account Email"]] = row.to_hash()
		end
	end
	



	def find_different(concern = nil)
		output = []

		@hash2.each do |key, value|
			if @hash1.key?(key)						
				unless same_data(@hash1[key], @hash2[key], concern)
					output << key
				end				
			end
		end

		@hash1.clear
		@hash2.clear

		return output

	end


	def same_data(data1, data2, concern = nil)		
		return false unless data1["Account Email"] == data2["Account Email"]

		if concern
			if concern == "subscriber_count"
				same_subscriber_count(data1[" Subscriber Count"], data2[" Subscriber Count"]) ? true : false
			elsif concern == "channel_ownership"
				same_youtube_channel(data1[" YouTube Channel"], data2[" YouTube Channel"]) ? true : false
			end
		else			
			same_youtube_channel(data1[" YouTube Channel"], data2[" YouTube Channel"]) and same_subscriber_count(data1[" Subscriber Count"], data2[" Subscriber Count"]) ? true : false
		end

		
	end



	#assumption: The youtube id doesn not have /. The whole URL can have it.

	def same_youtube_channel(data1, data2)
		if data1 and data2 #only when both are present
			data1 = data1.strip.split('/')[-1]
			data2 = data2.strip.split('/')[-1]

			#removing UC
			data1 = remove_UC(data1)
			data2 = remove_UC(data2)
			data1 == data2 ? true : false

		else 			
			!data1 and !data2 ? true : false #nil check. If both are nil, they are equal			
		end
	end

	#check the subscriber count
	def same_subscriber_count(data1, data2)
		if data1 and data2 #only when both are present		
			data1.strip.to_i == data2.strip.to_i ? true : false
		else 			
			!data1 and !data2 ? true : false #nil check. If both are nil in all docs, they are equal			
		end
	end

	#removie UC method
	def remove_UC(data)
		if data and data.length > 2 and data[0..1] == "UC" #assuming length of id will be always greater than 2.
			return data[2..-1]
		end
		return data
	end



end
