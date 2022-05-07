# Bitcoin Script Instance
## _Usage of stack-based bitcoin script language._

This project uses [btcdeb](https://github.com/kallewoof/btcdeb), or the Bitcoin Script Debugger by [kallewoof](https://github.com/kallewoof), a Bitcoin Core contributor. 

[btcdeb](https://github.com/kallewoof/btcdeb) is a bitcoin script compiler, In this project, it's been used to show various bitcoin transactions, with different types of scripts. 

#### Transactions handled (Script type):
- Pay To Pubkey Hash [P2PKH]
- Pay To Script Hash [P2SH]


## Description

Bitcoin script language is used to verify a bitcoin transaction. 
Bitcoin transactions internally have 2 scripts attached, a locking script (aka Pkscript) and an unlocking script (aka Sigscript). In the stack-based Bitcoin scripting language, there are various OPCODES (Simple functions that operate on the data inside the scripts). 

The locking script (aka Pkscript) is formulated at the time of the **n-1 th** transaction by its sender. And it's used for the **n th** along with the unlocking script (aka Sigscript).

At the time of execution, Sigscript is pushed to the stack before Pkscript and executed.

For special OPCODES like OP_CHECKSIG, we need the transaction's inputs along with its hex to execute.

The details (Pkscript/Sigscript) of a transaction are taken from [here](https://www.blockchain.com).
Hex of an entire transaction is taken from [here](https://bitcoindata.science/bitcoin-raw-transaction-hex.html).

The specific transactions used for P2PKH and P2SH are mentioned in the bash script, along with some descriptions.

## Installation

Used shell script to start the btcdeb environment execution.

#### 1) Clone the repository:
    git clone https://github.com/SD170/meeting-scheduler-backend
#### 2) Run a script:
On the project root folder, run:
    
    bash <SCRIPT_NAME.sh>
#### 3) View contiguous process:
To see how the bitcoin script is executed using stack, inside the btcdeb environment, type:

```
btcdeb> step
```
this command puts the top element of the script-stack to the execution-stack and executes it.

```
btcdeb> rewind
```
this command is used to undo a **step**.

#### 4) Success/Failure:
A script is valid if the top and only element left on the stack is a 1 (or greater) after all its execution (i.e after using step until the script-stack is empty).
    
## Conclusion
This project is for demonstrating the workings of the bitcoin script language for different transactions with different script types. 


#### Thanks for checking it out. Have a great day.
