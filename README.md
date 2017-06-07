For my personal use only. Do not use.

### Notes to myself:
```
docker create \
  -name=zap2xml \
  -v /path/to/config:/config \
  -e PUID=<uid> \
  -e PGID=<gid> \
  -e TZ=America/New_York \
  -e EMAIL=<email> \
  -e PASSWORD=<password> \
  -e EXTRAPARAM="<extra parameters for zap2xml>" \
  aptalca/zap2xml:<tag>
  ```
  
- Drop the zap2xml perl script into the config folder and restart
- Extra parameters can be anything that zap2xml accepts
- Use the image tag `ubuntu` for the ubuntu image and `alpine` for the alpine image. `latest` defaults to alpine. Alpine image is much more compact.
