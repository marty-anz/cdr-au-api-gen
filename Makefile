.PHONY: api/gen
 api/gen: ## Generates OpenAPI3 spec code
	mkdir -p gen/api/gen
	mkdir -p gen/api/gen/v1_24_0
	oapi-codegen -package api -generate types,chi-server,client openapi/cdr_banking.json > gen/api/gen/banking.go
	oapi-codegen -package api -generate types,chi-server,client openapi/cdr_common.json > gen/api/gen/common.go
	oapi-codegen -package api -generate types,chi-server,client openapi/v1_24_0/cdr_banking.json > gen/api/gen/v1_24_0/banking.go
