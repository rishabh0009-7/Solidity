const hre = require("hardhat");
const fs = require("fs");
const path = require("path");

async function main() {
  const contractsDir = path.join(__dirname, "../contracts");
  const files = fs.readdirSync(contractsDir);

  for (const file of files) {
    const filePath = path.join(contractsDir, file);
    const source = fs.readFileSync(filePath, "utf8");

    const matches = [...source.matchAll(/contract\s+(\w+)/g)];

    for (const match of matches) {
      const contractName = match[1];
      try {
        const Factory = await hre.ethers.getContractFactory(contractName);

        // 🔄 Deploy with no constructor args for now
        const instance = await Factory.deploy();

        await instance.deployed();
        console.log(`${contractName} deployed to: ${instance.address}`);
      } catch (err) {
        console.error(`❌ Failed to deploy ${contractName}:`, err.message);
      }
    }
  }
}

main().catch((err) => {
  console.error(err);
  process.exitCode = 1;
});
