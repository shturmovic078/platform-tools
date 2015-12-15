

./adb -s 55524b00 forward tcp:8080 tcp:8080
ruby link_S5.rb 

./adb -s 37c398e5 forward tcp:8080 tcp:8080
ruby link_S3.rb


./adb -s d562ade9 forward tcp:8080 tcp:8080
ruby link_S4.rb


ruby link_4S.rb