A naive ethereum smart contract written in solidity  
A naive webUI to interact with the contract through web3

Course link: https://coursetro.com/courses/20/Developing-Ethereum-Smart-Contracts-for-Beginners



1. Compile and deploy course.sol in remix

2. Copy paste the ABI and contract address to index.html:

   ```
   ...
   38			var courseContract = web3.eth.contract(<CONTRACT_ABI>);
   ...
   163			var course = courseContract.at(<CONTRACT_ADDRESS>);
   ...
   ```

3. Start a http server(Python 3 required):

   ```
   python -m http.server
   ```

4. Go to http://127.0.0.1:3000 in your browser(Metamask required)

