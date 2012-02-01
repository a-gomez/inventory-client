Feature: Format RESTful request

  Scenario Outline: With the following fields of computer information we expect a RESTful format 
    Given the inventory DNS is <srv_dns>
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
    Then the output should read: curl https://<srv_dns>/computers/<macid0> -u computer:Tr4ck-Stuf -X PUT -d serial="<serial>" -d last_user="<last_user>" -d en0_ip="<en0_ip>" -d cpu_name="<cpu_name>" -d backup_hd="<backup_hd>" -d cpu_speed="cpu_speed" -d issued_to="" -d os_version="<os_version>" -d ws_name="<ws_name>" -d en1_ip="<en1_ip>" -d en1_mac="<en1_mac>" -d ram="<ram>" -d ws_model="<ws_model>" -d macid0="<macid0>" -d status="Deployed" -d image_vers="Faculty_v1.0r2" 
