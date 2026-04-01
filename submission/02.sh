# Create a native segwit address and get the public key from the address.
#!/bin/bash
Address=$(bitcoin-cli -regtest -rpcwallet=builderswallet -named getnewaddress)
Pubkey=$(bitcoin-cli -regtest -rpcwallet=builderswallet -named getaddressinfo address="$Address" | jq -r '.pubkey')
echo $Pubkey