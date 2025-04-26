# netbox-vlan-webhook

Run with podman:

```
podman run --rm -it -v ./inventory.yml:/data/inventory/inventory.yml:z -p 5000:5000 quay.io/mhrivnak/netbox-vlan-webhook:latest ansible-rulebook --rulebook /data/rulebook.yml --inventory /data/inventory/inventory.yml
```

Run with k8s:

```
oc create secret generic switch-inventory --from-file=inventory.yml

oc apply -f deploy/k8s.yml
```
