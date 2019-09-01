# Exercise08 - Secrets


Create a local vault server.

View output, get the root token.
```
Unseal Key: 829f7G/+l5fhCMqBybJWaZz6RqAAmHrQLEMtXjzIu8w=
Root Token: s.wJ5lbtgqytkGcBg0715Ixpvg
```

Run the following
```
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN='token from last step'
```

Put a secret in there.

```
vault kv put /secret/passwords/user123 password=exampleabc123
```

## Getting data from vault.

Use the vault provider



Use vault secret data block. Reference this in `user_data`
```
data "vault_generic_secret" "creds" {
  path = "secret/passwords/user123"
}
```

Use the below line to change password of `linuxuser`. Change the example password with the one read from vault.

```
echo "linuxpassword" | passwd --stdin linuxuser
```