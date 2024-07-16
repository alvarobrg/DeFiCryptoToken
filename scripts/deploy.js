// scripts/deploy.js
async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);
  
    const DeFiCrypto = await ethers.getContractFactory("DeFiCrypto");
    const defiCrypto = await DeFiCrypto.deploy(1000000);
  
    console.log("DeFiCrypto deployed to:", defiCrypto.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });
  