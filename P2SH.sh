#!/bin/bash

# TXN type: Pay To Script Hash
# TXN URL: https://www.blockchain.com/btc/tx/fe6cefcaafd11c52ec6903e0aa9cd862ea76b62a15d312a7a065235c3acdcc02

# In order to run an OP_CHECKSIG command, the debugger needs to know about the transaction being checked, since it creates the signature hash from the transaction content.
# So, For P2SH we need to pass the transaction inputs(amount; comma separated), along with the hex of the transaction (https://bitcoindata.science/bitcoin-raw-transaction-hex.html)
# Format "--tx=amount1,amount2:hexdata"

btcdeb 
--tx=0.00085000:02000000010e905cede79c4d10184b42d9016b3dcc0890b614ee07810eb4c021d701916c30070000006b483045022100ef90a17ef39f96b8534469cfe69c19208a4d93eb878b1a5cc770886f6b24a9fe02201d943100ad79184931a306ca6d484e275ce96be46a93c146869b4d454872c7ca01210355cbcd19fdf8d4ba8511fd56312eb128f210b47528af514d89e80482af92cf2affffffff02e6190100000000001976a9142b19a1f7756b40b2e80d2604778b79771391497788ac511f0000000000001976a91487aeb5e570fd1fce52ad48afd1742ed660105cfc88ac00000000
'[
OP_DUP
OP_HASH160
8f1c89ddfed8abe3acdd5411508a595454bab678
OP_EQUALVERIFY
OP_CHECKSIG
]'
3045022100ef90a17ef39f96b8534469cfe69c19208a4d93eb878b1a5cc770886f6b24a9fe02201d943100ad79184931a306ca6d484e275ce96be46a93c146869b4d454872c7ca01
0355cbcd19fdf8d4ba8511fd56312eb128f210b47528af514d89e80482af92cf2a
# To follow the workings of the script, Keep on doing
#       $btcdeb> step
# in the terminal until the script-stack becomes empty,
# or the execution stack has 0/1 as the last item.
#
# 1:successful/0:unsuccessful
