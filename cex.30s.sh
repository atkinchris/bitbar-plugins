#!/bin/bash

# <bitbar.title>CEX.io Exchange Rates</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Chris Atkin</bitbar.author>
# <bitbar.dependencies>jq</bitbar.dependencies>

export PATH='/usr/local/bin:/usr/bin:$PATH'

ETH=$(jq -r '.lprice' <<< $(curl -s -k https://cex.io/api/last_price/ETH/GBP))
BTC=$(jq -r '.lprice' <<< $(curl -s -k https://cex.io/api/last_price/BTC/GBP))
BCH=$(jq -r '.lprice' <<< $(curl -s -k https://cex.io/api/last_price/BCH/USD))

printf " BCH: $"
printf "%0.0f" $BCH

printf " BTC: £"
printf "%0.0f" $BTC

printf " ETH: £"
printf "%0.0f" $ETH
