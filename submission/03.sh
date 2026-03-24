# Create a SegWit address.
ADDR=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "segwit_address" "bech32")
# Add funds to the address.
bitcoin-cli -regtest -rpcwallet=btrustwallet generatetoaddress 101 "$ADDR" | true
# Return only the Address
echo "$ADDR"