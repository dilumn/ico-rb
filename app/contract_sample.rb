require 'elchapo'
require 'pry'

# client = Ethereum::Connection.new("/root/.ethereum/rinkeby/geth.ipc", false)
client = Bitcoin::HttpConnection.new("http://127.0.0.1:18333", user: "foo", pass: "bar")
# client = Ethereum::HttpConnection.new("http://0.0.0.0:8545")
binding.pry
# contract = Ethereum::Contract.create(file: "greeter.sol", client: client)
# address = contract.deploy_and_wait("Hello from ethereum.rb!")
# binding.pry