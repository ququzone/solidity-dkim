Solidity DKIM verify
====================

## Install

```
yarn add solidity-dkim
```

## Add server

```
// 20221208.gmail.com
// cast keccak 20221208.gmail.com - 0x742f414edb3e03a4afce78a329bb4c56d45c6f449a5d9248c879b987cbd2c088
cast send <dkim_keys_address> "updateKey(bytes32, bytes)" \
  0x742f414edb3e03a4afce78a329bb4c56d45c6f449a5d9248c879b987cbd2c088 \
  0xb3a543e094101d1676119351e744da9084056371863f855f63704f6ee7907ba5e7c2f86e879c24565954f174c8c7166df93eae83bb5be906c00aea50f48fd303674a9225afe165d4b7ea917e4719bf379d1201896a540bbcf4768996889aa5a230d5ce8a7b627e6d20f3caec7d1ad85166b74fe608a396e2220f409ea9a8f706ca0e6b4c95632092852a2876e30d58076fa8aa6230d5fc7124a7986d04269c3f92af75c1f5f26e8fdaa52771fc5f3e3e4392bc323c0937c78329eac9b8c2a001632c91ba4c4edbf9482948d981b1c012e7511bd959aa58b290c380e5900a4330f41255908983c02b6b3de7e1b4147778256b43e6952aab3b98fa13a79bfd1d0f \
  --private-key=$PRIVATE_KEY --legacy

// s201512.qq.com
// cast keccak s201512.qq.com - 0xf4aa4be7e92c27323564f0fbbc6600818201d2d09a63e00fa7983b8e7415a3d5
cast send <dkim_keys_address> "updateKey(bytes32, bytes)" \
  0xf4aa4be7e92c27323564f0fbbc6600818201d2d09a63e00fa7983b8e7415a3d5 \
  0xcfb0520e4ad78c4adb0deb5e605162b6469349fc1fde9269b88d596ed9f3735c00c592317c982320874b987bcc38e8556ac544bdee169b66ae8fe639828ff5afb4f199017e3d8e675a077f21cd9e5c526c1866476e7ba74cd7bb16a1c3d93bc7bb1d576aedb4307c6b948d5b8c29f79307788d7a8ebf84585bf53994827c23a5 \
  --private-key=$PRIVATE_KEY --legacy
```

## Deploy

```
forge create --legacy --rpc-url $ETH_RPC_URL \
  --constructor-args "0xd8eC0C598A033d72554fac7807d4308a36Ba8910" \
  --private-key $PRIVATE_KEY src/DkimVerifier.sol:DkimVerifier
```
