echo "load_input_path: /mnt/efs/criteo_kaggle/train.csv 
load_input_type: csv
num_classes: 2 
num_features: 13 
limit_cols: 14 
normalize: 1 
limit_samples: 50000000 
s3_size: 50000 
use_bias: 1 
model_type: LogisticRegression 
minibatch_size: 20 
learning_rate: 0.050000 
epsilon: 0.000100 
model_bits: 19 
dataset_format: binary 
s3_bucket: criteo-kaggle-19b 
use_grad_threshold: 0 
grad_threshold: 0.001000 
train_set: 0-9 
test_set: 10-19" > python_files/config_1375.txt

nohup ./parameter_server --config python_files/config_1375.txt --nworkers 40 --rank 1 --ps_port 1375 &> python_files/ps_out_1375 & 

nohup ./parameter_server --config python_files/config_1375.txt --nworkers 20 --rank 2 --ps_ip 172.31.14.190 --ps_port 1375 &> python_files/error_out_1375 &

echo "load_input_path: /mnt/efs/criteo_kaggle/train.csv 
load_input_type: csv
num_classes: 2 
num_features: 13 
limit_cols: 14 
normalize: 1 
limit_samples: 50000000 
s3_size: 50000 
use_bias: 1 
model_type: LogisticRegression 
minibatch_size: 20 
learning_rate: 0.016667 
epsilon: 0.000100 
model_bits: 19 
dataset_format: binary 
s3_bucket: criteo-kaggle-19b 
use_grad_threshold: 0 
grad_threshold: 0.001000 
train_set: 0-9 
test_set: 10-19" > python_files/config_1379.txt

nohup ./parameter_server --config python_files/config_1379.txt --nworkers 40 --rank 1 --ps_port 1379 &> python_files/ps_out_1379 & 

nohup ./parameter_server --config python_files/config_1379.txt --nworkers 20 --rank 2 --ps_ip 172.31.14.190 --ps_port 1379 &> python_files/error_out_1379 &

echo "load_input_path: /mnt/efs/criteo_kaggle/train.csv 
load_input_type: csv
num_classes: 2 
num_features: 13 
limit_cols: 14 
normalize: 1 
limit_samples: 50000000 
s3_size: 50000 
use_bias: 1 
model_type: LogisticRegression 
minibatch_size: 20 
learning_rate: 0.010000 
epsilon: 0.000100 
model_bits: 19 
dataset_format: binary 
s3_bucket: criteo-kaggle-19b 
use_grad_threshold: 0 
grad_threshold: 0.001000 
train_set: 0-9 
test_set: 10-19" > python_files/config_1383.txt

nohup ./parameter_server --config python_files/config_1383.txt --nworkers 40 --rank 1 --ps_port 1383 &> python_files/ps_out_1383 & 

nohup ./parameter_server --config python_files/config_1383.txt --nworkers 20 --rank 2 --ps_ip 172.31.14.190 --ps_port 1383 &> python_files/error_out_1383 &

echo "load_input_path: /mnt/efs/criteo_kaggle/train.csv 
load_input_type: csv
num_classes: 2 
num_features: 13 
limit_cols: 14 
normalize: 1 
limit_samples: 50000000 
s3_size: 50000 
use_bias: 1 
model_type: LogisticRegression 
minibatch_size: 20 
learning_rate: 0.007143 
epsilon: 0.000100 
model_bits: 19 
dataset_format: binary 
s3_bucket: criteo-kaggle-19b 
use_grad_threshold: 0 
grad_threshold: 0.001000 
train_set: 0-9 
test_set: 10-19" > python_files/config_1387.txt

nohup ./parameter_server --config python_files/config_1387.txt --nworkers 40 --rank 1 --ps_port 1387 &> python_files/ps_out_1387 & 

nohup ./parameter_server --config python_files/config_1387.txt --nworkers 20 --rank 2 --ps_ip 172.31.14.190 --ps_port 1387 &> python_files/error_out_1387 &

echo "load_input_path: /mnt/efs/criteo_kaggle/train.csv 
load_input_type: csv
num_classes: 2 
num_features: 13 
limit_cols: 14 
normalize: 1 
limit_samples: 50000000 
s3_size: 50000 
use_bias: 1 
model_type: LogisticRegression 
minibatch_size: 20 
learning_rate: 0.005556 
epsilon: 0.000100 
model_bits: 19 
dataset_format: binary 
s3_bucket: criteo-kaggle-19b 
use_grad_threshold: 0 
grad_threshold: 0.001000 
train_set: 0-9 
test_set: 10-19" > python_files/config_1391.txt

nohup ./parameter_server --config python_files/config_1391.txt --nworkers 40 --rank 1 --ps_port 1391 &> python_files/ps_out_1391 & 

nohup ./parameter_server --config python_files/config_1391.txt --nworkers 20 --rank 2 --ps_ip 172.31.14.190 --ps_port 1391 &> python_files/error_out_1391 &

echo "load_input_path: /mnt/efs/criteo_kaggle/train.csv 
load_input_type: csv
num_classes: 2 
num_features: 13 
limit_cols: 14 
normalize: 1 
limit_samples: 50000000 
s3_size: 50000 
use_bias: 1 
model_type: LogisticRegression 
minibatch_size: 20 
learning_rate: 0.004545 
epsilon: 0.000100 
model_bits: 19 
dataset_format: binary 
s3_bucket: criteo-kaggle-19b 
use_grad_threshold: 0 
grad_threshold: 0.001000 
train_set: 0-9 
test_set: 10-19" > python_files/config_1395.txt

nohup ./parameter_server --config python_files/config_1395.txt --nworkers 40 --rank 1 --ps_port 1395 &> python_files/ps_out_1395 & 

nohup ./parameter_server --config python_files/config_1395.txt --nworkers 20 --rank 2 --ps_ip 172.31.14.190 --ps_port 1395 &> python_files/error_out_1395 &

echo "load_input_path: /mnt/efs/criteo_kaggle/train.csv 
load_input_type: csv
num_classes: 2 
num_features: 13 
limit_cols: 14 
normalize: 1 
limit_samples: 50000000 
s3_size: 50000 
use_bias: 1 
model_type: LogisticRegression 
minibatch_size: 20 
learning_rate: 0.003846 
epsilon: 0.000100 
model_bits: 19 
dataset_format: binary 
s3_bucket: criteo-kaggle-19b 
use_grad_threshold: 0 
grad_threshold: 0.001000 
train_set: 0-9 
test_set: 10-19" > python_files/config_1399.txt

nohup ./parameter_server --config python_files/config_1399.txt --nworkers 40 --rank 1 --ps_port 1399 &> python_files/ps_out_1399 & 

nohup ./parameter_server --config python_files/config_1399.txt --nworkers 20 --rank 2 --ps_ip 172.31.14.190 --ps_port 1399 &> python_files/error_out_1399 &

echo "load_input_path: /mnt/efs/criteo_kaggle/train.csv 
load_input_type: csv
num_classes: 2 
num_features: 13 
limit_cols: 14 
normalize: 1 
limit_samples: 50000000 
s3_size: 50000 
use_bias: 1 
model_type: LogisticRegression 
minibatch_size: 20 
learning_rate: 0.003333 
epsilon: 0.000100 
model_bits: 19 
dataset_format: binary 
s3_bucket: criteo-kaggle-19b 
use_grad_threshold: 0 
grad_threshold: 0.001000 
train_set: 0-9 
test_set: 10-19" > python_files/config_1403.txt

nohup ./parameter_server --config python_files/config_1403.txt --nworkers 40 --rank 1 --ps_port 1403 &> python_files/ps_out_1403 & 

nohup ./parameter_server --config python_files/config_1403.txt --nworkers 20 --rank 2 --ps_ip 172.31.14.190 --ps_port 1403 &> python_files/error_out_1403 &

echo "load_input_path: /mnt/efs/criteo_kaggle/train.csv 
load_input_type: csv
num_classes: 2 
num_features: 13 
limit_cols: 14 
normalize: 1 
limit_samples: 50000000 
s3_size: 50000 
use_bias: 1 
model_type: LogisticRegression 
minibatch_size: 20 
learning_rate: 0.002941 
epsilon: 0.000100 
model_bits: 19 
dataset_format: binary 
s3_bucket: criteo-kaggle-19b 
use_grad_threshold: 0 
grad_threshold: 0.001000 
train_set: 0-9 
test_set: 10-19" > python_files/config_1407.txt

nohup ./parameter_server --config python_files/config_1407.txt --nworkers 40 --rank 1 --ps_port 1407 &> python_files/ps_out_1407 & 

nohup ./parameter_server --config python_files/config_1407.txt --nworkers 20 --rank 2 --ps_ip 172.31.14.190 --ps_port 1407 &> python_files/error_out_1407 &

echo "load_input_path: /mnt/efs/criteo_kaggle/train.csv 
load_input_type: csv
num_classes: 2 
num_features: 13 
limit_cols: 14 
normalize: 1 
limit_samples: 50000000 
s3_size: 50000 
use_bias: 1 
model_type: LogisticRegression 
minibatch_size: 20 
learning_rate: 0.002632 
epsilon: 0.000100 
model_bits: 19 
dataset_format: binary 
s3_bucket: criteo-kaggle-19b 
use_grad_threshold: 0 
grad_threshold: 0.001000 
train_set: 0-9 
test_set: 10-19" > python_files/config_1411.txt

nohup ./parameter_server --config python_files/config_1411.txt --nworkers 40 --rank 1 --ps_port 1411 &> python_files/ps_out_1411 & 

nohup ./parameter_server --config python_files/config_1411.txt --nworkers 20 --rank 2 --ps_ip 172.31.14.190 --ps_port 1411 &> python_files/error_out_1411 &
