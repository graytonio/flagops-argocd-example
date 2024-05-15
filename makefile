deps:
	cd nginx-app && helm dependencies build

template:
	helm template ./nginx-app


deploy:
	helm template ./nginx-app | kubectl apply -f -