.PHONY: api/gen
 api/gen: ## Generates OpenAPI3 spec code
	oapi-codegen -package api -generate types,chi-server,client openapi/cdr_banking.json > gen/api/gen/banking.go
