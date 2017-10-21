require 'elchapo'
require 'pry'

# client = Ethereum::Connection.new("/root/.ethereum/rinkeby/geth.ipc", false)
client = Ethereum::HttpConnection.new("http://0.0.0.0:8545")
binding.pry
# contract = Ethereum::Contract.create(file: "greeter.sol", client: client)
# address = contract.deploy_and_wait("Hello from ethereum.rb!")
# binding.pry