require 'json'

Given /^we run the inventory script with the computer specs in JSON format (.*)$/ do |input_hash| 
  @output = `ruby inventory.rb #{input_hash}`  
  raise('Command failed!') unless $?.success?

end

Then /^the computer specs in hash format should be (.*)$/ do |internal_hash|
  @output.to_s.should == internal_hash.to_s
end

Then /^the output should be (.*)$/ do |expected_curl| 
  pending #@output.should == expected_curl
end

