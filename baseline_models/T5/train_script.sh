python run_summarization.py \
    --model_name_or_path t5-base \
    --do_train \
    --do_eval \
    --do_predict \
    --train_file Data/train.csv \
    --validation_file Data/val.csv \
    --test_file Data/test.csv \
    --text_column Text \
    --summary_column Summary \
    --source_prefix "summarize: " \
    --output_dir output_T5_base_QFCS \
    --overwrite_output_dir \
    --per_device_train_batch_size=4 \
    --per_device_eval_batch_size=4 \
    --predict_with_generate=True \
    --learning_rate=0.0005 \
    --num_beams=4 \
    --num_train_epochs=4 \
    --max_steps=4000 \
    --save_steps=500 \
    --eval_steps=500 \
    --evaluation_strategy steps \
    --load_best_model