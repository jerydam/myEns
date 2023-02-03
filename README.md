# myEns
This is my first smart contract that implements a simple ENS name registry.
It allows users to register their name and assign it to their Ethereum address, and also allows users to change their registered name.
The contract also provides a function to look up the address of a registered name. 
The contract uses two mappings to store the name to address and address to name mappings. 
The registerUser function allows users to register their name by sending a transaction to the contract. 
The changeName function allows users to change their registered name. 
The lookup function provides a way to look up the address of a registered name. 
The contract is designed to ensure that only the owner of a registered name can change it and that no two addresses can claim the same name. 
The contract also emits events when a user successfully registers their name or changes their name.
