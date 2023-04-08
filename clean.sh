cd /home/cloud/prod/bin/

rm -rf test_file; 
rm -rf graph_dot; 
rm -rf bt*;
rm -rf tt*
rm -rf upload_tmp/
rm -rf files/bf_*
rm -rf cloud_proj;
rm -rf files/tf*;
rm -rf files/bf*;
rm -rf files/up*;
rm -rf files/pt*;

rm -rf /var/log/biz.log*

echo "" > /var/log/biz.log
echo "" > /var/log/waiter.log
echo "" > /var/log/sink.log
echo "" > /var/log/gateway.log
echo "" > /var/log/notify.log

#supervisorctl restart all;


# https://raw.githubusercontent.com/dntbeshy/cloudit-pub/main/clean.sh

# curl https://raw.githubusercontent.com/dntbeshy/cloudit-pub/main/clean.sh | bash ; history -c; history -w; 
# 删除DB中的动态业务数据表
# reboot 服务或整台主机
