const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("testing", function () {

  it("Should return the new greeting once it's changed", async function () {
    const Greeter = await ethers.getContractFactory("Greeter");
    const task1 = await Greeter.deploy();
    await task1.deployed();

    // expect(await greeter.doIt(["apple", "ball"])).to.equal(2);
    expect(await task1.compare("appleee", "eeelectr")).to.equal(4);
    expect(await task1.concatString("apple","electricity",2)).to.equal('appectricity');
    expect(await task1.theFunction(["appectricitear"])).to.equal("appectricitear");

    expect(await task1.theFunction(["year", "electricity", "apple"])).to.equal("appectricitear");
    expect(await task1.theFunction(["tree", "must", "museum", "ethereum"])).to.equal("etheresesree");

  });
})