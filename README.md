# README #

## ico-rb ##

`ico-rb` is a dockerized environment to run `ethereum` network & deploy smart contracts to the `ethereum` network using `ruby`

### Run docker container ###

`docker-compose build` will fetch all dependencies & install.

`docker-compose -f docker-compose.yml up` will start running the `ethereum` network in the container. If you are running this for the first time, it will take few hours to sync all blocks to your container.

By default this is pointing to `rinkeby` ethereum test network. But if you want to run the main `ethereum` network remove `command: --rinkeby` line from `docker-compose.yml`


### Login to the `geth` console of the container ###

`docker exec -it CONTAINERNAME geth attach ipc:/root/.ethereum/rinkeby/geth.ipc`

If you are connecting to the main `ethereum` network, `docker exec -it CONTAINERNAME geth attach` will be enough


### Login to the `bash` of the container ###

`docker exec -it CONTAINERNAME bash`

In the app directory `bundle install` & run the ruby script `bundle exec ruby contract_sample.rb`

For this I'm using [ethereum.rb](https://github.com/EthWorks/ethereum.rb) gem to compile & deploy the smart contract.

Make sure you create a new account from `geth`, unlock the account & have some amount of `ethereum` before deploy the smart contract.


### Who do I talk to? ###

* Repo owner or admin
* Other community or team contact