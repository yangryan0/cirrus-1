for i in "./tests/test_travis/mnist_test/test.sh & sleep 10" "./src/parameter_server --nworkers=10 --rank=2 --config=\"configs/softmax_config.cfg\" --ps_ip=\"127.0.0.1\" --testing=true --ps_port=1337"; do eval ${i}; done
for i in "./tests/test_travis/test.sh & sleep 10" "./src/parameter_server --nworkers=10 --rank=2 --config=\"configs/criteo_kaggle.cfg\" --ps_ip=\"127.0.0.1\" --testing=true --ps_port=1341"; do eval ${i}; done
