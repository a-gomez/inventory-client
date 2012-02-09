require 'json'

#comp_specs = {}
comp_specs = ARGV[0]

hash_specs = eval(comp_specs) # converts the input from string to a hash
#puts hash_specs

#hash_specs.to_json
#print hash_specs


#specs_json = JSON.generate ({"macid0"=>"d4:9a:20:d1:2e:03", "serial"=>"W89507PX5RU", "ws_name"=>"itt507PX5RU", "ws_model"=>"iMac11,1", "cpu_speed"=>"2.8 GHz", "cpu_name"=>"Intel Core i7", "ram"=>"16 GB", "os_version"=>"Mac OS X 10.6.8", "en0_ip"=>"10.190.40.8", "en1_mac"=>"d4:9a:20:5b:9d:6a", "en1_ip"=>"10.184.16.125", "last_user"=>"first-boot", "backup_hd"=>"", "status"=>"Ready", "issued_to"=>""})


#puts comp_specs.inspect

specs_json = JSON.generate(hash_specs) # converts the hash to a JSON object
print specs_json # note that 'puts' makes it more human-readable; new-line is not included in test




###########################
#puts "computer specs: " 
# print comp_specs

#comp_specs = {"serial"=>"W89507PX5RU"}

#comp_specs = JSON.parse(ARGV[0])
#comp_specs.to_json

#print "curl https://10.164.64.57/computers/d4:9a:20:d1:2e:03 -u computer:Tr4ck-Stuf -X PUT -d serial='W89507PX5RU' -d last_user='agomez' -d en0_ip='10.190.40.8' -d cpu_name='Intel Core i7' -d backup_hd='' -d cpu_speed='2.8 GHz' -d os_version='Mac OS X 10.6.8' -d ws_name='itt507PX5RU' -d en1_ip='' -d en1_mac='d4:9a:20:5b:9d:6a' -d ram='16 GB' -d ws_model='iMac11,1' -d macid0='d4:9a:20:d1:2e:03'" 

