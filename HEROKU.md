Heroku Deployment
===

After going through heroku default installation process, you need to pass ENV variable:
```
 heroku config:set RPC_URL="http://serverhost:port"
```

### Note:

Don't forget to enable: `--rpc --rpccorsdomain "https://ethermint-explorer.herokuapp.com"`
*p.s. --rpccorsdomain should be configured to the ethermint-explorer*
