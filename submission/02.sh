# Create a native segwit address and get the public key from the address.
#!/bin/bash
# Generate a new Bitcoin address
Address=$(bitcoin-cli -regtest -rpcwallet=builderswallet -named getnewaddress)
# Retrieve the public key associated with that new address
Pubkey=$(bitcoin-cli -regtest -rpcwallet=builderswallet -named getaddressinfo address="$Address" | jq -r '.pubkey')
# Print the extracted public key to the terminal
echo $Pubkey