# The kill VirtualHost in Virtual Machines 

## Use Docker Compose for migrate virtual machines in containers

Create file .env in root path
```
EMAIL=SEU@EMAIL.COM
USERPWD=user:passencrypted
```

### Create password for dashboard

```
docker run --rm httpd:2.4-alpine htpasswd -nbB USER PasswordForEncrypt | sed -e s/\\$/\\$\\$/g
```