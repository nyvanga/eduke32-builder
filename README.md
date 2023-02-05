# EDuke32 builder

Container image to build [EDuke32](https://www.eduke32.com/) on your Linux machine.

Inspired by `Build script` in [Let's play Duke Nukem 3D on Linux](https://www.seniorlinuxadmin.co.uk/eduke32.html#build-script).

To run this locally:
```
docker run --rm -t \
	-v "${HOME}/Games/eduke32:/eduke32" \
	-e USER_ID="$(id -u)" \
	-e GROUP_ID="$(id -g)" \
	nyvnaga/eduke32-builder
```
