# add container for specific elasticsearch version
sudo docker run -dti --restart always --net net --name elasticsearch2 	-p9200:9200 		-v /var/www/elasticsearch2:/usr/share/elasticsearch/data 		elasticsearch:2.4
sudo docker run -dti --restart always --net net --name elasticsearch5 	-p9201:9200 		-v /var/www/elasticsearch5:/usr/share/elasticsearch/data 		elasticsearch:5
# intall plugin for elasticsearch for correct working of elasticsearch
sudo docker exec -ti elasticsearch5 bash -c "bin/elasticsearch-plugin install analysis-icu"
sudo docker exec -ti elasticsearch5 bash -c "bin/elasticsearch-plugin install analysis-phonetic"
sudo docker exec -ti elasticsearch2 bash -c "plugin install analysis-icu"
sudo docker exec -ti elasticsearch2 bash -c "plugin install analysis-phonetic"
