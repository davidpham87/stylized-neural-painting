wedding:
	python3 demo.py --img_path test_images/wedding.jpg --canvas_size 128

couple:
	python3 demo_prog.py --img_path test_images/couple.jpg --canvas_size 2048 --with_ot_loss --max_divide 2 --max_m_strokes 600  --disable_preview

mimi:
	python3 demo.py --img_path test_images/mimi.jpg --canvas_size 2048 --m_grid 2 \
	--max_m_strokes 500 --lr 0.0025 --with_ot_loss

mimi_style:
	python3 demo_nst.py --canvas_size 2048 \
	--disable_preview  --lr 0.0025 \
	--renderer oilpaintbrush --vector_file ./output/mimi_strokes.npz \
	--style_img_path ./style_images/picasso.jpg --content_img_path ./test_images/mimi.jpg \
	--canvas_color 'white' --renderer_checkpoint_dir checkpoints_G_oilpaintbrush \
	--transfer_mode 1 --disable_preview --beta_L1 100


couple_checkpoint:
	python3 demo.py --img_path test_images/couple.jpg --canvas_size 2048 --with_ot_loss --m_grid 3 --max_m_strokes 600  --disable_preview --vector_file ./output/couple_strokes.npz

couple_style:
	python3 demo_nst.py --renderer oilpaintbrush --vector_file ./output/couple_strokes.npz --style_img_path ./style_images/picasso.jpg --content_img_path ./test_images/couple.jpg --canvas_color 'white' --renderer_checkpoint_dir checkpoints_G_oilpaintbrush --transfer_mode 0 --beta_sty 0.25 --disable_preview
