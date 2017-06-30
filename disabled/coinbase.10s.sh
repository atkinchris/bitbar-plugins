#!/bin/bash

# <bitbar.title>Coinbase Exchange Rates</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Chris Atkin</bitbar.author>
# <bitbar.dependencies>jq</bitbar.dependencies>

export PATH='/usr/local/bin:/usr/bin:$PATH'

DATA=$(curl -s https://api.coinbase.com/v1/currencies/exchange_rates)

BTC=$(jq -r '.btc_to_gbp' <<< $DATA)
ETH=$(jq -r '.eth_to_gbp' <<< $DATA)

echo -n "BTC: £$BTC ETH: £$ETH"
