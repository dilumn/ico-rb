require 'ethereum'
require 'pry'

client = Ethereum::IpcClient.new("/root/.ethereum/rinkeby/geth.ipc", false)

contract = Ethereum::Contract.create(file: "greeter.sol", client: client)
address = contract.deploy_and_wait("Hello from ethereum.rb!")
binding.pry