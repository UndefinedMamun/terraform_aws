
tf_init:
	@ echo "Initializing terraform"
	@ terraform fmt --recursive
	@ terraform init

tf_plan:
	@ echo "Planning terraform"
	@ terraform fmt --recursive
	@ terraform plan

tf_apply:
	@ echo "Applying terraform"
	@ terraform fmt --recursive
	@ terraform apply