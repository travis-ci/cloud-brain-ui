heroku:
	wget https://github.com/travis-ci/sso/releases/download/v0.1.0/sso
	chmod +x sso
	mv sso bin

	go get -u github.com/gocraft/work/cmd/workwebui
	go install github.com/gocraft/work/cmd/workwebui
