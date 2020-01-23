# install docker, see documentation
# install elastic search
sudo docker network create somenetwork
sudo docker run -d --name elasticsearch --net somenetwork -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:6.8.1
# check elastic is working
curl -XGET http://127.0.0.1:9200/
# for smile elasticsuite is required additional plugins
# enter elasticsearch docker container
sudo docker exec -it elasticsearch bash
# check you location is should be /usr/share/elasticsearch
pwd
# install required plugins
bin/elasticsearch-plugin install analysis-phonetic
bin/elasticsearch-plugin install analysis-icu
# exit elasticsearch container
exit
# restart elasticsearch container
sudo docker restart elasticsearch
# if after machine retarting container is not running, restart it
sudo docker restart elasticsearch
