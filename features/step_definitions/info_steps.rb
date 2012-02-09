require 'json'

Given /^we run the inventory script with the computer specs in hash format (.*)$/ do |input_hash| 
  @output = `ruby inventory.rb #{input_hash}`  
  raise('Command failed!') unless $?.success?
  print "given input hash, print output:"
  print @output

  @hash_output = eval(@output)
end

Then /^the computer specs in hash format should be (.*)$/ do |internal_hash|
  @output.to_s.should == internal_hash.to_s
end

Given /^we run the inventory script with the specs in JSON format "([^"]*)"$/ do |input_JSON|
  @output = `ruby inventory.rb #{input_JSON}`
  raise('Command failed!') unless $?.success?
end

Then /^the output in JSON format should be (.*)$/ do |specs_JSON|
  #@output.to_json.should == specs_JSON
  #JSON.generate(@output).should == specs_JSON
  @hash_output.to_json.should == specs_JSON
end

