Feature: Reading computer information

  Scenario Outline: Reading the following fields of computer information
    Given the host IP is <host_ip>
      And this macid0 <macid0>       
      And this serial <serial>
      And this ws_name <ws_name>      
      And this ws_model <ws_model>
      And this cpu_speed <cpu_speed>  
      And this cpu_name <cpu_name>
      And this ram <ram>
      And this os_version <os_version>
      And this en0_ip <en0_ip>
      And this en1_mac <en1_mac>
      And this last_user <last_user>
      And this backup_hd <backup_hd>
    Then the bash script <db-last-user.sh> that is created should read:
      """
      curl -i -k https://<host_ip>/computers/<macid0> -u computer:Tr4ck-Stuf -X PUT -d serial="W89507PX5RU" -d last_user="agomez" -d en0_ip="10.190.40.8" -d cpu_name="Intel Core i7" -d backup_hd="" -d cpu_speed="2.8 GHz" -d issued_to="agomez" -d os_version="Mac OS X 10.6.8" -d ws_name="itt507PX5RU" -d en1_ip="10.184.16.125" -d en1_mac="d4:9a:20:5b:9d:6a" -d ram="16 GB" -d ws_model="iMac11,1" -d macid0="d4:9a:20:d1:2e:03" -d status="Deployed" -d image_vers="Faculty_v1.0r2"
      """
      # where do the -ik options come from?
      
    
