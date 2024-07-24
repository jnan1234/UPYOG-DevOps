go run ../scripts/init.go
sleep 5
cd remote-state
terraform init
sleep 2
terraform apply -auto-approve
sleep 5
cd ..
sleep 5
terraform init
sleep 10
terraform apply -auto-approve
sleep 10
terraform output -json | go run ../scripts/envYAMLUpdater.go
sleep 5
cd ../../../deploy-as-code/deployer
sleep 2
go run digit_installer.go
