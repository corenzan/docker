FROM corenzan/fontforge
RUN apk add --no-cache git
WORKDIR /nerd-fonts
RUN git clone --filter=blob:none --no-checkout https://github.com/ryanoasis/nerd-fonts.git . \
    && git sparse-checkout init --cone \
    && git sparse-checkout set src
VOLUME ["/fonts"]
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]