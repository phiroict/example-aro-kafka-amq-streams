# Example runs here, note that the make commands do not work in macos. 
SHELL = /bin/bash
start_crc_mac_arm:
	crc config set enable-cluster-monitoring true 
	crc start -c 12 -m 32000 -p ~/Downloads/pull-secret
console:
	crc console
stop:
	crc stop
logon:
	eval $(crc oc-env) && oc login -u kubeadmin -p ${CRC_PASS}  https://api.crc.testing:6443
operator_list:
	oc get packagemanifests -n openshift-marketplace
deploy_producer:
	oc run kafka-producer -ti \
    --image=registry.redhat.io/amq7/amq-streams-kafka-31-rhel8:2.1.0 \
    --rm=true \
    --restart=Never \
    -- bin/kafka-console-producer.sh --bootstrap-server my-cluster-kafka-tls-bootstrap-kafka-ns.apps-crc.testing  --topic my-topic