### Developer playbook
The **developer** playbook performs a basic developer machine setup. The minimum necessary variables that must be specified are:

```yaml
vault_user:
  name: <Insert username here>
  email: <Insert email here>
  
  gpg:
    passphrase: <secret passphrase>
    comment: <key comment>
```
