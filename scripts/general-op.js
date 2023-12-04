const { ethers } = require("hardhat");

async function main() {
  const contractAddress = "0x2D8C785bEBdd1a0B642d06B6ef69668bbb1FA0F8";
  const contractFactory = await ethers.getContractFactory("contractA");
  const contract = contractFactory.attach(contractAddress);
  const addr1 = "0xBE4494DaB28095e1465aB151a21e9D529752998A";

  //balanceOf()
  console.log((await contract.balanceOf(addr1, 0)).toString());

  //mint()
  //mint id 1 with 3 items to addr1
  await contract.mint(addr1, 1, 3, "0x00");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
