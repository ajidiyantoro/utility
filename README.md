# Description

The following tools are a combination of several tools that I created for debugging needs. For now there are several common tools that can be used including :
- curl
- mc (minio-client)
- ldapsearch
- nslookup
- etc
## Quick Start

To run this project, make sure you have docker installed on your computer.

```bash
  docker pull ajidiyantoro/utility
```

Run docker container

```bash
  docker run -d --name utility ajidiyantoro/utility
```

If you want to run on a Kubernetes cluster, please see the example manifest in this repository.

```bash
  kubectl create ns utility
  kubectl apply -f statefullset.yaml
```
## How To Use

How to execute commands using a docker container. For example, I will do nslookup to domain.

```bash
  docker exec -it utility nslookup example.com
```
```bash
  docker exec -it utility ldapsearch -x -W -D "cn=admin,dc=ldap,dc=example,dc=com" -b "dc=ldap,dc=example,dc=com"
```

And if you are running on kubernetes, you can run the following command.
```bash
  kubectl -n utility exec -it utility sh -- nslookup example.com
```
```bash
  kubectl -n utility exec -it utility sh -- ldapsearch -x -W -D "cn=admin,dc=ldap,dc=example,dc=com" -b "dc=ldap,dc=example,dc=com"
```
