# netbox-vlan-webhook

Run with podman:

```
podman run --rm -it -v ./inventory.yml:/data/inventory.yml:z -p 5000:5000 quay.io/mhrivnak/netbox-vlan-webhook:latest ansible-rulebook --rulebook /data/rulebook.yml --inventory /data/inventory.yml
```
