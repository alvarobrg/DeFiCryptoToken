// test/DeFiCrypto.js
const { expect } = require("chai");

describe("DeFiCrypto", function () {
  it("Deployment should assign the total supply of tokens to the owner", async function () {
    const [owner] = await ethers.getSigners();

    const DeFiCrypto = await ethers.getContractFactory("DeFiCrypto");

    const initialSupply = 1000000;
    const defiCrypto = await DeFiCrypto.deploy(initialSupply);
    await defiCrypto.deployed();

    const ownerBalance = await defiCrypto.balanceOf(owner.address);
    expect(await defiCrypto.totalSupply()).to.equal(ownerBalance);
  });
});
