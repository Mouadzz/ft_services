mv telegraf.conf etc/
wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.4.0.linux-amd64.tar.gz

tar -xvf grafana-enterprise-7.4.0.linux-amd64.tar.gz
rm grafana-enterprise-7.4.0.linux-amd64.tar.gz

sleep 2 

mkdir /grafana-7.4.0/data
mv grafana.db /grafana-7.4.0/data/

rc-status
touch /run/openrc/softlevel
rc-service telegraf start

cd /grafana-7.4.0/bin ; ./grafana-server
