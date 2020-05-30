Run [font-patcher](https://github.com/ryanoasis/nerd-fonts#font-patcher) by [Nerd Fonts](https://www.nerdfonts.com/) in a container.

- Easy to use entrypoint script.
- Alpine based image with only bare necessities included.
- Repository cloned using sparse-checkout (~2GB of savings).
- Final image has ~610MB.

# Usage

```shell
docker run --rm --volume [directory]:/fonts corenzan/font-patcher [options] [font]
```

For example, if you have `Consolas.ttf` in the current directory and you wanted to add powerline glyphs to it, you would run:

```shell
docker run --rm --volume $(pwd):/fonts corenzan/font-patcher --powerline Consolas.ttf
```
