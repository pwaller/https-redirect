build:
	docker build -t https-redirect .
	docker run --rm https-redirect cat /go/bin/https-redirect > https-redirect
	chmod u+x https-redirect