install_proto_go:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
protoc:
	protoc --go_out=. shared/protobuf/*.proto
bench:
	CREATE_BENCHDATA=true go test -bench . -benchmem -cover ./...
