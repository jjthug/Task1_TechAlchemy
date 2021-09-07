The smart contract Greeter.sol can be found inside the contracts folder.

The function : **theFunction** does the computation of our required logic.

Example 1
Input: "year", "electricity", "apple"
Output: "appectricitear"

Example 2
Input: "tree", “must”, "museum", "ethereum"
Output: "etheresesree"


step 1: Install the node dependencies using the following command: npm install

step 2: Run the test using: npx hardhat test

-- The tests can be accessed inside test folder, and any expect statement can be added to test any test case for example: 
    expect(await task1.theFunction(["year", "electricity", "apple"])).to.equal("appectricitear");

