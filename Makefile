heroku:
	wget -q https://github.com/travis-ci/sso/releases/download/v0.1.1/sso
	chmod +x sso
	mv sso bin

	rm -r $(GOPATH)/src/github.com/gocraft/work
	go get -u github.com/gocraft/work/cmd/workwebui
	go install github.com/gocraft/work/cmd/workwebui
