heroku:
	mkdir -p $(GOPATH)/src/github.com/gocraft/work
	git clone -b patch-1 https://github.com/igorwwwwwwwwwwwwwwwwwwww/work $(GOPATH)/src/github.com/gocraft/work
	go install github.com/gocraft/work/cmd/workwebui
