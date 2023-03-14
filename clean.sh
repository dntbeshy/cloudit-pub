cd /home/cloud/prod/bin/

rm -rf test_file; 
rm -rf graph_dot; 
rm -rf bt167*;
rm -rf tt*
rm -rf cloud_proj;
rm -rf files/tf*;
rm -rf files/up*;

rm -rf /var/log/biz.log*

echo "" > /var/log/biz.log
echo "" > /var/log/waiter.log
echo "" > /var/log/sink.log
echo "" > /var/log/gateway.log
echo "" > /var/log/notify.log

#supervisorctl restart all;




