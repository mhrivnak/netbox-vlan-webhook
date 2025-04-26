# netbox-vlan-webhook

This receives a webhook event from netbox when an Interface changes. It
configures the corresponding port on the corresponding switch to be an access
port for the VLAN that is recorded on the interface in netbox.

## Inventory

Create inventory.yml like below, and change the host, user, and password as needed.

```
all:
  hosts:
    switch0:
      ansible_host: switch0.local
      ansible_user: admin
      ansible_password: changeme
      ansible_network_os: cisco.ios.ios
      ansible_connection: ansible.netcommon.network_cli
      ansible_become: yes
      ansible_become_method: enable
```

## Run

Run with podman:

```
podman run --rm -it -v ./inventory.yml:/data/inventory/inventory.yml:z -p 5000:5000 quay.io/mhrivnak/netbox-vlan-webhook:latest ansible-rulebook --rulebook /data/rulebook.yml --inventory /data/inventory/inventory.yml
```

Run with k8s:

```
oc create secret generic switch-inventory --from-file=inventory.yml

oc apply -f deploy/k8s.yml
```
