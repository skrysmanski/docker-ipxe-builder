# iPXE chainload builder in a Docker container
This container wraps the build process for embedding an `.ipxe` file in the iPXE chainloader image.

* iPXE: http://ipxe.org/
* iPXE chainloader: http://ipxe.org/howto/chainloading
* Embedding scripts: http://ipxe.org/embed

To use this container:

1. Checkout this repo
2. Edit `embed.ipxe` to what ever you need
3. Run `build.sh`

This will put a `undionly.kpxe` (iPXE chainloader with `embed.ipxe` embedded) file in the current directory.

The `undionly.kpxe` file produced by this container may be used in the [docker-ipxe-server](https://github.com/skrysmanski/docker-ipxe-server) repository.

## Base Image
The base image for the build process can be found in the `base-image` directory.
