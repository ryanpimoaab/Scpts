#! /bin/bash

curl -s https://raw.githubusercontent.com/ZeroDot1/CoinBlockerLists/master/list.txt | awk '!/bittrex.com|bitcoin.com|bitconnect.co|binance.com|poloniex.com|coinbase.com|bitaccess.co|bitfinex.com|ledgerwallet.com|bitcore.io|bitpay.com|hitbtc.com|coinpot.co|copay.io|cryptonator.com|changelly.com|cointrend.club|bitcoinethereum.eu|bittylicious.com/' | awk '!x[$0]++' | awk '{print tolower($0)}' > /Volumes/Rayyan/Pi/Github/Scrpts/Lists/0.1-c0lnbl-l.txt

cp /Volumes/Rayyan/Pi/Github/Scrpts/Lists/0.1-c0lnbl-l.txt /Volumes/Rayyan/Pi/Github/c0ln/0.1-c0lnbl-l.txt
