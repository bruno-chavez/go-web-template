# Description
`go-microservice-template` main purpose is to be a starting point 
for a REST API in Go. Reducing boilerplate writing and speeding up development of new microservices

# How to use
1. Clone repository.
2. Delete `go.mod`, `go.sum`, `LICENSE` and `.git`.
3. Run `go mod init`.
4. Rename the binary name on `Dockerfile` with the name of you module. Do the same with the files inside `handlers/`, `server/` and `main.go`.
5. Rename the `.env.example` file to `.env` and customize the parameters accordingly.

# Features
+ Fast and easy to use router with [julienschmidt/httprouter](https://github.com/julienschmidt/httprouter).
+ Graceful shutdown out of the box.
+ Environment variables loading from an `.env` file  with the help of [godotenv](https://github.com/joho/godotenv).
+ Dependency management with Go Modules.
+ Optional CORS handling with [rs/cors](https://github.com/rs/cors), see `server/server.go` for how to enable it.

# Continuous Integration
`go-microservice-template` currently, it uses Github Actions for linting, testing and building the microservice. Current workflow:

+ Lints with [golangci-lint](https://github.com/golangci/golangci-lint).
+ Run unit tests and prints the results with [tparse](https://github.com/mfridman/tparse).
+ Builds binary.
+ Builds Docker Image.

See [ci.yml](https://github.com/bruno-chavez/go-web-template/blob/master/.github/workflows/ci.yml) for more info.

# Notes
+ Previously the module was called `go-web-template`, it lacked any kind of meaningful updates and was too opinionated for its purpose. I decided to complete refactor it and came up with the current iteration of `go-microservice-template`.

# Contribute
Found a bug or an error? Post it in the [issue tracker](https://github.com/bruno-chavez/go-microservice-template/issues).

Want to add an awesome new feature? [Fork](https://github.com/bruno-chavez/go-microservice-template/fork) this repository, add the feature on a new branch, send a pull request!

# License
The MIT License (MIT)
Copyright (c) 2021 Bruno Chavez
