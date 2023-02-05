# EDuke32 builder

Container image to build [EDuke32](https://www.eduke32.com/) on your Linux machine.

Inspired by `Build script` in [Let's play Duke Nukem 3D on Linux](https://www.seniorlinuxadmin.co.uk/eduke32.html#build-script).

To run this locally. Binaries will end up in `~/Games/eduke32`:
```
docker run --rm -t \
	-v "${HOME}/Games/eduke32:/eduke32" \
	-e USER_ID="$(id -u)" \
	-e GROUP_ID="$(id -g)" \
	nyvanga/eduke32-builder
```

You should see something like this:
```
########## Cloning eduke32 ##########
Cloning into '/eduke32build'...
remote: Enumerating objects: 95262, done.


   ... lots and lots of make lines ...


Building: make  -
-rwxr-xr-x 1 root root 3427824 Feb  5 17:44 eduke32
-rwxr-xr-x 1 root root 2594464 Feb  5 17:44 mapster32
########## Storing binaries ##########
'/eduke32build/eduke32' -> '/eduke32/eduke32'
'/eduke32build/mapster32' -> '/eduke32/mapster32'
########## Setting ownership ##########
All done! Hurray!
```

Now copy your `DUKE3D.GRP` and `DUKE.RTS` files to the `~/Games/eduke32` folder, and you should be good to go! 

If you own the `Duke Nukem 3D Twentieth Anniversary World Tour` on Steam you can grap them from there.

Just run:
```
find -name DUKE3D.GRP -or -name DUKE.RTS
```

Typical location:
```
"${HOME}/.steam/debian-installation/steamapps/common/Duke Nukem 3D Twentieth Anniversary World Tour/"
```
