.PHONY: api/gen
 api/gen: ## Generates OpenAPI3 spec code
	mkdir -p gen/api/gen/v1_24_0
	oapi-codegen -package api -generate types,chi-server,client openapi/v1_24_0/cds_banking.json > gen/api/gen/v1_24_0/banking.go

	mkdir -p gen/api/gen/v1_31_0
	oapi-codegen -package api -generate types,chi-server,client openapi/v1_31_0/cds_banking.json > gen/api/gen/v1_31_0/banking.go
	oapi-codegen -package api -generate types,chi-server,client openapi/v1_31_0/cds_common.json > gen/api/gen/v1_31_0/common.go
