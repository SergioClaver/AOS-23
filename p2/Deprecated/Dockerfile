FROM swaggerapi/swagger-ui:latest
RUN mkdir /aos-23
COPY /openapi/clientes/clientes-by-id.yaml /aos-23/
COPY /openapi/clientes/clientes.yaml /aos-23/
COPY /openapi/clientes/examples.yaml /aos-23/
COPY /openapi/clientes/headers.yaml /aos-23/
COPY /openapi/clientes/openapi.yaml /aos-23/
COPY /openapi/clientes/parameters.yaml /aos-23/
COPY /openapi/clientes/requestBodies.yaml /aos-23/
COPY /openapi/clientes/responses.yaml /aos-23/
COPY /openapi/clientes/schemas.yaml /aos-23/

ENV SWAGGER_JSON=/aos-23/openapi.yaml
EXPOSE 8080