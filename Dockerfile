ARG buildx_version=0.8.2
FROM docker/buildx-bin:$buildx_version as buildx

FROM alpine
COPY --from=buildx /buildx /usr/local/sbin/docker-buildx
COPY docker-bake.hcl docker-bake.hcl

RUN docker-buildx bake -f docker-bake.hcl a --print > "docker-bake.json"
RUN cat docker-bake.json



