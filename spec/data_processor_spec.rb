require 'spec_helper'
require 'data_processor.rb'

describe DataProcessor do	

    context "initialize" do 

        it "should initialize two empty hashes " do
            dataprocessor = DataProcessor.new
            expect(dataprocessor.hash1.class).to eq(Hash)
            expect(dataprocessor.hash2.class).to eq(Hash)
            expect(dataprocessor.hash1.empty?).to eq(true)
            expect(dataprocessor.hash2.empty?).to eq(true)
        end         
    end

    #testing few private methods through unit tests as we are using only one class. Normally there is no need to test private methods. 
    #The result itself or the message will be tested in those classes which use the results of the these methods

    context "remove_UC" do 

        it "should remove UC" do
            dataprocessor = DataProcessor.new
            expect(dataprocessor.remove_UC("UCfmVQFPh1KVkCvuvQjnRrxA")).to eq("fmVQFPh1KVkCvuvQjnRrxA")
            expect(dataprocessor.remove_UC("UC")).to eq("UC")
            expect(dataprocessor.remove_UC("fmVQFPh1KVkCvuvQjnRrxA")).to eq("fmVQFPh1KVkCvuvQjnRrxA")
            expect(dataprocessor.remove_UC("")).to eq("")

           
        end         
    end

    context "same_subscriber_count" do 

        it "check if subscriber count is equal" do
            dataprocessor = DataProcessor.new
            expect(dataprocessor.same_subscriber_count(nil, nil)).to eq(true)
            expect(dataprocessor.same_subscriber_count(nil, "21")).to eq(false)
            expect(dataprocessor.same_subscriber_count("233", nil)).to eq(false)

            expect(dataprocessor.same_subscriber_count("42953", "4953")).to eq(false)
            expect(dataprocessor.same_subscriber_count("1434", "1434")).to eq(true)
            expect(dataprocessor.same_subscriber_count("33", "33")).to eq(true)            
           
        end         
    end

     context "same_youtube_channel" do 

        it "check if youtube channel are same" do
            dataprocessor = DataProcessor.new
            expect(dataprocessor.same_youtube_channel("http://www.youtube.com/channel/UCWBKJ1RNeKTPII34pc6UyUg", "UCWBKJ1RNeKTPII34pc6UyUg")).to eq(true)
            expect(dataprocessor.same_youtube_channel(nil, nil)).to eq(true)
            expect(dataprocessor.same_youtube_channel("http://www.youtube.com/channel/UCWBKJ1RNeKTPII34pc6UyUg", nil)).to eq(false)
            expect(dataprocessor.same_youtube_channel("5OXObSqKlu01WtG0GTUq2g", "UC5OXObSqKlu01WtG0GTUq2g")).to eq(true)
            expect(dataprocessor.same_youtube_channel("5OXObSqKlu01WtG0GTUq2g", "OXObSqKlu01WtG0GTUq2g")).to eq(false)
            expect(dataprocessor.same_youtube_channel("5OXObSqKlu01WtG0GTUq2g", "")).to eq(false)
            expect(dataprocessor.same_youtube_channel("", "UCWBKJ1RNeKTPII34pc6UyUg")).to eq(false)
            expect(dataprocessor.same_youtube_channel("", "")).to eq(true)
          
           
        end         
    end


    context "same_data" do 

            it "check if data is same" do
                dataprocessor = DataProcessor.new

                expect(dataprocessor.same_data({"Account Email" => "test_1@gmail.com", " YouTube Channel" => "WBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => "29443"}, {"Account Email" => "test_1@gmail.com", " YouTube Channel" => "WBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => "28443"}, "subscriber_count")).to eq(false)                

                expect(dataprocessor.same_data({"Account Email" => "test_1@gmail.com", " YouTube Channel" => "WBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => "29443"}, {"Account Email" => "test_1@gmail.com", " YouTube Channel" => "UCWBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => '29443'}, "subscriber_count")).to eq(true)
                        
                expect(dataprocessor.same_data({"Account Email" => "test_1@gmail.com", " YouTube Channel" => "aWBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => "29443"}, {"Account Email" => "test_1@gmail.com", " YouTube Channel" => "UCWBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => '29443'}, "subscriber_count")).to eq(true)
                
                expect(dataprocessor.same_data({"Account Email" => "test_1@gmail.com", " YouTube Channel" => "WBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => "29443"}, {"Account Email" => "test_1@gmail.com", " YouTube Channel" => "UCWBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => '28443'}, "channel_ownership")).to eq(true)

                
                expect(dataprocessor.same_data({"Account Email" => "test_1@gmail.com", " YouTube Channel" => "", " Subscriber Count" => "29443"}, {"Account Email" => "test_1@gmail.com", " YouTube Channel" => "UCWBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => '29443'}, "channel_ownership")).to eq(false)
                
                expect(dataprocessor.same_data({"Account Email" => "test_1@gmail.com", " YouTube Channel" => "WBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => "29443"}, {"Account Email" => "test_1@gmail.com", " YouTube Channel" => "UCWBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => '29443'}, "channel_ownership")).to eq(true)

                    
                expect(dataprocessor.same_data({"Account Email" => "test_1@gmail.com", " YouTube Channel" => "https://youtube.com/channel/WBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => "29443"}, {"Account Email" => "test_1@gmail.com", " YouTube Channel" => "UCWBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => '29443'})).to eq(true)
               
                expect(dataprocessor.same_data({"Account Email" => "test_2@gmail.com", " YouTube Channel" => "https://youtube.com/channel/WBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => "29443"}, {"Account Email" => "test_1@gmail.com", " YouTube Channel" => "UCWBKJ1RNeKTPII34pc6UyUg", " Subscriber Count" => '29443'})).to eq(false)




            end         
    end
   


    context "build_data" do 

            it "pushes data in hashes according to the file" do
                dataprocessor = DataProcessor.new            

                dataprocessor.read_file(File.dirname(__FILE__) + "/csv1.csv", dataprocessor.hash1)
                dataprocessor.read_file(File.dirname(__FILE__) + "/csv2.csv", dataprocessor.hash2)
                

                expect(dataprocessor.hash1["test_1@gmail.com"][" YouTube Channel"]).to eq("UCWBKJ1RNeKTPII34pc6UyUg")
                expect(dataprocessor.hash2["test_1@gmail.com"][" YouTube Channel"]).to eq("WBKJ1RNeKTPII34pc6UyUg")


                expect(dataprocessor.hash1["test_42@gmail.com"][" Subscriber Count"]).to eq("286")
                expect(dataprocessor.hash2["test_42@gmail.com"][" Subscriber Count"]).to eq("286")
                


            end         
    end

    context "find_different" do 

            it "finds data which are not consistent" do
                dataprocessor = DataProcessor.new            

                dataprocessor.read_file(File.dirname(__FILE__) + "/csv1.csv", dataprocessor.hash1)
                dataprocessor.read_file(File.dirname(__FILE__) + "/csv2.csv", dataprocessor.hash2)
                
                arr = dataprocessor.find_different
                #p arr
                expect(arr).to match_array(["test_1@gmail.com", "test_4@gmail.com", "test_14@gmail.com", "test_15@gmail.com", "test_17@gmail.com", "test_26@gmail.com", "test_30@gmail.com", "test_31@gmail.com", "test_34@gmail.com", "test_35@gmail.com", "test_45@gmail.com", "test_46@gmail.com", "test_59@gmail.com"])
               
                


            end         
    end

    context "yt_data_checker" do 

            it "returns data which are not consistent" do
                dataprocessor = DataProcessor.new   

                arr = dataprocessor.yt_data_checker(File.dirname(__FILE__) + "/csv1.csv", File.dirname(__FILE__) + "/csv2.csv")                             
                expect(arr).to match_array(["test_1@gmail.com", "test_4@gmail.com", "test_14@gmail.com", "test_15@gmail.com", "test_17@gmail.com", "test_26@gmail.com", "test_30@gmail.com", "test_31@gmail.com", "test_34@gmail.com", "test_35@gmail.com", "test_45@gmail.com", "test_46@gmail.com", "test_59@gmail.com"])

               
                arr2 = dataprocessor.yt_data_checker(File.dirname(__FILE__) + "/csv1.csv", File.dirname(__FILE__) + "/csv2.csv", "subscriber_count")                             
                expect(arr2).to match_array(["test_1@gmail.com", "test_14@gmail.com", "test_15@gmail.com", "test_26@gmail.com", "test_34@gmail.com", "test_35@gmail.com", "test_45@gmail.com", "test_46@gmail.com"])


                arr3 = dataprocessor.yt_data_checker(File.dirname(__FILE__) + "/csv1.csv", File.dirname(__FILE__) + "/csv2.csv", "channel_ownership")                             
                expect(arr3).to match_array(["test_17@gmail.com", "test_26@gmail.com", "test_30@gmail.com", "test_31@gmail.com", "test_4@gmail.com", "test_59@gmail.com"])



            end         
    end
    
    

   

end
