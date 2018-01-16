#!/bin/bash

# <bitbar.title>CEX.io Exchange Rates</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Chris Atkin</bitbar.author>
# <bitbar.dependencies>jq</bitbar.dependencies>

export PATH='/usr/local/bin:/usr/bin:$PATH'

ETH=$(jq -r '.lprice' <<< $(curl -s -k https://cex.io/api/last_price/ETH/EUR))
XRP=$(jq -r '.lprice' <<< $(curl -s -k https://cex.io/api/last_price/XRP/EUR))

printf " ETH: "
printf "%0.2f" $ETH

printf " XRP: "
printf "%0.2f" $XRP
