Unfancy rest apis, oauth authentication for coffeerest

<img alt="" src="https://github.com/coderofsalvation/coffeerest-api/raw/master/coffeerest.png" width="20%" />

OAuth authenticate with 3rd party webapps 

> WARNING: not productionready

## Ouch! Is it that simple?

Just add these fields to your coffeerest-api `model.coffee` specification 

    --> oauth:
    -->   provider1:
    -->     'key': '...'
    -->     'secret': '...'
    -->     'scope': [
    -->       'scope1'
    -->       'scope2'
    -->     ]
    -->     'callback': '/provider1/callback'

## Usage 

    npm install coffeerest-api
    npm install coffeerest-api-oauth 

for more info / servercode see [coffeerest-api](https://www.npmjs.com/package/coffeerest-api)

## Example 


