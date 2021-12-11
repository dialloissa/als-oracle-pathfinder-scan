# als-oracle-pathfinder
An Account Lookup Service Oracle for GSMA Pathfinder resolution of MSISDNs. Code based on the
Mojaloop [ALS Oracle Template](https://github.com/mojaloop/als-oracle-template).

Note that you'll need to supply your own Pathfinder secrets for this service to work correctly.
Additionally, to execute the pathfinder tests, you'll need to supply these secrets in
`./src/lib/pathfinder/secrets_test`.

- This repo is forked so we could publish a helm chart. 
- Upstream is: https://github.com/mojaloop/als-oracle-pathfinder  
- Please push any service code changes upstream (or ask Matt to do so)

## TODO
* pre-commit hook to run tests before commit (https://www.npmjs.com/package/pre-commit or DIY)
* go through and address all TODOs in pathfinder lib
* bring in openapi/header validation libs? hapi-openapi is considerably lacking
* if there is an error in server init, the server hangs forever. Try to throw an error from, for
    example, the db init method. This could be pretty annoying in production.
