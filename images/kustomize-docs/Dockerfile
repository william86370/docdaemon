# Build Kustomize Docs
FROM base as kustomize-docs
# Stage 2. Git Clone the repo and cd into the directory
# Set the working directory
WORKDIR /src
# Git clone the kustomize repo and perform the hugo buid outputing the docs into the /docs directory
RUN git clone https://github.com/kubernetes-sigs/cli-experimental.git \
    && cd cli-experimental/site/ \
    && npm install \
    && npm install -g postcss-cli \
    && npm install autoprefixer \
    && mkdir -p /site \ 
    && HUGO_ENV="production" hugo --gc --destination /site/

FROM nginx-rootless
LABEL docs="kubectl.docs.kubernetes.io"
# Copy static files from builder stage
COPY --from=kustomize-docs /site /usr/share/nginx/html
