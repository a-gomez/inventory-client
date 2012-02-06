Feature: Format RESTful request

  Scenario: With the following fields of computer information input we expect the correspoonding format 
    Given we run the inventory script with the computer specs in hash format "{'macid0'=>'d4:9a:20:d1:2e:03', 'serial'=>'W89507PX5RU', 'ws_name'=>'itt507PX5RU', 'ws_model'=>'iMac11,1', 'cpu_speed'=>'2.8 GHz', 'cpu_name'=>'Intel Core i7', 'ram'=>'16 GB', 'os_version'=>'Mac OS X 10.6.8', 'en0_ip'=>'10.190.40.8', 'en1_mac'=>'d4:9a:20:5b:9d:6a', 'en1_ip'=>'10.184.16.125', 'last_user'=>'first-boot', 'backup_hd'=>'', 'status'=>'Ready', 'issued_to'=>''}" 
    
    Then the computer specs in hash format should be {'macid0'=>'d4:9a:20:d1:2e:03', 'serial'=>'W89507PX5RU', 'ws_name'=>'itt507PX5RU', 'ws_model'=>'iMac11,1', 'cpu_speed'=>'2.8 GHz', 'cpu_name'=>'Intel Core i7', 'ram'=>'16 GB', 'os_version'=>'Mac OS X 10.6.8', 'en0_ip'=>'10.190.40.8', 'en1_mac'=>'d4:9a:20:5b:9d:6a', 'en1_ip'=>'10.184.16.125', 'last_user'=>'first-boot', 'backup_hd'=>'', 'status'=>'Ready', 'issued_to'=>''}

#    Then the computer specs in hash format should be {"serial":"W89507PX5RU"}

  Scenario: With the following information in hash format as input, we expect the corresponding JSON output
    Given we run the inventory script with the computer specs in hash format "{'macid0'=>'d4:9a:20:d1:2e:03', 'serial'=>'W89507PX5RU', 'ws_name'=>'itt507PX5RU', 'ws_model'=>'iMac11,1', 'cpu_speed'=>'2.8 GHz', 'cpu_name'=>'Intel Core i7', 'ram'=>'16 GB', 'os_version'=>'Mac OS X 10.6.8', 'en0_ip'=>'10.190.40.8', 'en1_mac'=>'d4:9a:20:5b:9d:6a', 'en1_ip'=>'10.184.16.125', 'last_user'=>'first-boot', 'backup_hd'=>'', 'status'=>'Ready', 'issued_to'=>''}" 
    Then the output in JSON format should be {macid0:d4:9a:20:d1:2e:03, serial:W89507PX5RU, ws_name:itt507PX5RU, ws_model:iMac11,1, cpu_speed:2.8 GHz, cpu_name:Intel Core i7, ram:16 GB, os_version:Mac OS X 10.6.8, en0_ip:10.190.40.8, en1_mac:d4:9a:20:5b:9d:6a, en1_ip:10.184.16.125, last_user:first-boot, backup_hd:'', status:Ready, issued_to:''}" 


   # Then the output should be curl https://10.164.64.57/computers/d4:9a:20:d1:2e:03 -u computer:Tr4ck-Stuf -X PUT -d serial='W89507PX5RU' -d last_user='agomez' -d en0_ip='10.190.40.8' -d cpu_name='Intel Core i7' -d backup_hd='' -d cpu_speed='2.8 GHz' -d os_version='Mac OS X 10.6.8' -d ws_name='itt507PX5RU' -d en1_ip='' -d en1_mac='d4:9a:20:5b:9d:6a' -d ram='16 GB' -d ws_model='iMac11,1' -d macid0='d4:9a:20:d1:2e:03'


#####   
  # Given the computer specs in hash format should be {"macid0"=>"d4:9a:20:d1:2e:03", "serial"=>"W89507PX5RU", "ws_name"=>"itt507PX5RU", "ws_model"=>"iMac11,1", "cpu_speed"=>"2.8 GHz", "cpu_name"=>"Intel Core i7", "ram"=>"16 GB", "os_version"=>"Mac OS X 10.6.8", "en0_ip"=>"10.190.40.8", "en1_mac"=>"d4:9a:20:5b:9d:6a", "en1_ip"=>"10.184.16.125", "last_user"=>"first-boot", "backup_hd"=>"", "status"=>"Ready", "issued_to"=>""}
    #Given we run the inventory script with the computer specs in JSON format {"macid0":"d49a20d12e03","serial":"W89507PX5RU","ws_name":"itt507PX5RU","ws_model":"iMac11,1","cpu_speed":"2.8 GHz","cpu_name":"Intel Core i7","ram":"16 GB","os_version":"Mac OS X 10.6.8","en0_ip":"10.190.40.8","en1_mac":"d4\:9a\:20\:5b\:9d\:6a","en1_ip":"10.184.16.125","last_user":"agomez","backup_hd":"","image_vers":"Faculty_v1.0r2","status":"Deployed","issued_to":"agomez"}
    Given we run the inventory script with the computer specs in JSON format "{'macid0':'d4:9a:20:d1:2e:03', 'serial':'W89507PX5RU','ws_name':'itt507PX5RU','ws_model':'iMac11,1', 'cpu_speed':'2.8 GHz', 'cpu_name':'Intel Core i7', 'ram':'16 GB', 'os_version':'Mac OS X 10.6.8', 'en0_ip':'10.190.40.8', 'en1_mac':'d4:9a:20:5b:9d:6a', 'en1_ip':'10.184.16.125', 'last_user':'first-boot', 'backup_hd':'', 'status':'Ready', 'issued_to':''}"
 
