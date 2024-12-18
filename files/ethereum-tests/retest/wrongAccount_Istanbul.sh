# PRV_KEY for master sender 0x335E8Ab27D1C929155F6E0c62e228cBC7A97dcA1
PRV_KEY=4ae553e593f4d4a1b78db85b4445ea2c50db934ec4da8e6f26a0f0e5c9d89a83
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongAccount_Istanbul (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/wrongAccountCopier.json)"

