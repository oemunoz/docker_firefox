# Basic Firefox Docker

Running a Firefox docker on a local DISPLAY. This is a useful when you need to keep your browser options on separated container.

## Tested options:

1. Diferent proxy options than local Firefox install.
2. Keep your alternatives accounts settings, when you use "permanent" docker container beside the "--rm" option. (use "docker [stop|start]" for use your instance settings.)

## Get this image

```bash
docker pull oems/firefox:latest
```

### 1. Diferent proxy options

This must work out of the box, the "--no-remote" ensure that your container Firefox is not in relation with your local Firefox instance.

### 2. Alternatives accounts settings

Replace the "-ti --rm" option with "--name" on the firefox.sh script, for example:

```bash
docker run --name ffox_acounts_test1 \
      -e DISPLAY=$DISPLAY \
      -e URL=$* \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      -v $HOME/.Xauthority:/home/developer/.Xauthority  \
      -v $HOME/Downloads:/home/developer/Downloads \
      --net=host \
      oems/firefox:latest 
```

## Usage:

```bash
firefox.sh www.google.com
```
## Licence

No guaranty at all.
