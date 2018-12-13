# 执行
!python bert/run_classifier.py \
  --task_name=wsdm \
  --do_train=true \
  --do_eval=false \
  --do_predict=false \
  --data_dir=./data \
  --vocab_file=gs://wsdm-huhuhang/models/chinese_L-12_H-768_A-12/vocab.txt \
  --bert_config_file=gs://wsdm-huhuhang/models/chinese_L-12_H-768_A-12/bert_config.json \
  --init_checkpoint=gs://wsdm-huhuhang/models/chinese_L-12_H-768_A-12/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=5e-5 \
  --num_train_epochs=2.0 \
  --output_dir=gs://wsdm-huhuhang/outputs \
  --use_tpu=True \
  --do_lower_case=False \
  --tpu_name=grpc://10.43.122.242:8470 \