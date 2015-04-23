# Static binary to redirect HTTP to HTTPS

# [Download Linux x64](https://github.com/pwaller/https-redirect/releases/download/v0.1/https-redirect)

```
$ curl -sSOL https://github.com/pwaller/https-redirect/releases/download/v0.1/https-redirect
$ echo "4d6f6521830c30b9cd515b5b902f6cf5eccd69164ef67c6b7f00c4982ba46638  https-redirect" | sha256sum -c
https-redirect: OK
$ chmod +x ./https-redirect
$ setcap 'cap_net_bind_service=+ep' ./https-redirect
```
