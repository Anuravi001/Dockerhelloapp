FROM node:latest
WORKDIR /js/src/github.com/ar025398/docker-k8s-walkthrough
COPY cli ./cli
RUN npm ci --only=production && npm cache clean --force
COPY --from=0 /js/bin/server ./binary
CMD ./binary