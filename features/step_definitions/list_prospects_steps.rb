Given /^a set of Prospects like:$/ do |prospects|
	ProspectApi.data = prospects.hashes
end


When /^the client requests GET (.*)$/ do |path|
  get(path)
end

Then /^the response should be (\d+) prospects$/ do |size|
  #last_response.body.should == json
  last_response.body.should have_json_size(size.to_i)
end

Given /^no search criterias$/ do

end

Then /^the response should be JSON:$/ do |json|
  JSON.parse(last_response.body).should == JSON.parse(json)
end

