init:
	source venv/bin/activate && pip install -r requirements.txt
init_venv:
	python -m venv venv/
set_venv:
	source venv/bin/activate
trust_cert:
	sudo trust anchor --store /home/phiro/Dropbox/werk/hypr/sx/Projects/aro-kafka/kafka/certs/ca.crt
add_cert:
	keytool -import -alias ca -file ca.crt -keystore cacerts -storepass blabla
run_producer:
	time ./producer.py -f kafka.config -t my-topic
run_consumer:
	time ./consumer.py -f kafka.config -t my-topic
run_all_unattended:
	nohup ./producer.py -f kafka.config -t my-topic & 
	noup ./consumer.py -f kafka.config -t my-topic &