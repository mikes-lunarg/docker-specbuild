This image is intended to ease the building of the Khronos Vulkan spec, found at:

https://github.com/KhronosGroup/Vulkan-Docs

To use this, install docker (https://docs.docker.com/engine/installation/), then:

docker run -it -v /path/to/Vulkan-Docs:/documents michaelworcester/docker-specbuild

Inside the new shell you can run commands such as:

cd src/spec ; make validate
cd src/spec ; make

cd doc/specs/vulkan ; make html
cd doc/specs/vulkan ; make

Note: The output files will be owned by root, I will attempt to fix this.

