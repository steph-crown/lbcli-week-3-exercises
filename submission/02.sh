# Create a native segwit address and get the public key from the address.
ADDRESS=$(bitcoin-cli -regtest getnewaddress "" "p2sh-segwit")
bitcoin-cli -regtest -rpcwallet=builderswallet getaddressinfo $ADDRESS | jq -r ".pubkey"
