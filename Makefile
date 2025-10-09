build:
	docker build -t hoanghs120/seminar .

push:
	docker push hoanghs120/seminar:v1

deploy:
	kubectl apply -f deployment/deployment.yaml

undeploy:
	kubectl delete -f deployment/deployment.yaml

run:
	docker run -p 8080:8080 hoanghs120/seminar

clean:
	docker rm -f seminar


