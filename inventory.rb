require 'json'
#comp_specs = {}
comp_specs = ARGV[0]
#comp_specs = JSON.parse(ARGV[0])

#comp_specs = {"serial"=>"W89507PX5RU"}

#print JSON.generate(comp_specs) 
print comp_specs
#print "curl https://10.164.64.57/computers/d4:9a:20:d1:2e:03 -u computer:Tr4ck-Stuf -X PUT -d serial='W89507PX5RU' -d last_user='agomez' -d en0_ip='10.190.40.8' -d cpu_name='Intel Core i7' -d backup_hd='' -d cpu_speed='2.8 GHz' -d os_version='Mac OS X 10.6.8' -d ws_name='itt507PX5RU' -d en1_ip='' -d en1_mac='d4:9a:20:5b:9d:6a' -d ram='16 GB' -d ws_model='iMac11,1' -d macid0='d4:9a:20:d1:2e:03'" 

