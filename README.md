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

// google.iotex.io
// cast keccak google.iotex.io - 0x6cfd69594d6e6cd8d64e1074969af1631031d7a36432f4f283f0e11a9383281e
cast send <dkim_keys_address> "updateKey(bytes32, bytes)" \
  0x6cfd69594d6e6cd8d64e1074969af1631031d7a36432f4f283f0e11a9383281e \
  0x82adae6927cb16b7df13b0198797fcc80e08e814ad7cb90a89d037c14d127cd90f919bddac4d3bec1dde84af54bc87d91f38a02c31b8d02729353c1bd9ca82814ad12ffb085da953ebcbd34b5d6bd51a1e5b415c62571e73f8623678965e43eb7fae5ea7447d9ce5b5c1fb0e3108a98c112cd29204426c12bd7326c966caaf46c0de075bd47c4c36a02c341d54c193d0173b3b4f7a898695c9149b9937710903cd6d9816d7dae07c98396f858dc87372062004fc123046eb97165e2bae1d7f4a119420d95e1ac42282b6a3dd05cbcd7fac5f62e484e5e7a3b9fdc0988fe31231c52edc4012d21e2044fccaae47f4087d305eee295ada5637e4a023f76f933561 \
  --private-key=$PRIVATE_KEY --legacy

// cast keccak 20230601.gmail.com - 0x3af5743a573fedca99b7bc3b385d1dfb9e568d46e098a467e5fc2e8cc0cb154a
cast send <dkim_keys_address> "updateKey(bytes32, bytes)" \
  0x3af5743a573fedca99b7bc3b385d1dfb9e568d46e098a467e5fc2e8cc0cb154a \
  0x9edbd2293d6192a84a7b4c5c699d31f906e8b83b09b817dbcbf4bcda3c6ca02fd2a1d99f995b360f52801f79a2d40a9d31d535da1d957c44de389920198ab996377df7a009eee7764b238b42696168d1c7ecbc7e31d69bf3fcc337549dc4f0110e070cec0b111021f0435e51db415a2940011aee0d4db4767c32a76308aae634320642d63fe2e018e81f505e13e0765bd8f6366d0b443fa41ea8eb5c5b8aebb07db82fb5e10fe1d265bd61b22b6b13454f6e1273c43c08e0917cd795cc9d25636606145cff02c48d58d0538d96ab50620b28ad9f5aa685b528f41ef1bad24a546c8bdb1707fb6ee7a2e61bbb440cd9ab6795d4c106145000c13aeeedd678b05f \
  --private-key=$PRIVATE_KEY --legacy

// cast keccak lark2212230708.iotex.me - 0x4a00c3f66a03ce511192d5a3087131d3e659049dbd4e5130c67a0176479cf2c0
cast send <dkim_keys_address> "updateKey(bytes32, bytes)" \
  0x4a00c3f66a03ce511192d5a3087131d3e659049dbd4e5130c67a0176479cf2c0 \
  0xb5cb7249e70b3734aae7a78573021feeb31e0daedbac3466e273cc2975a208877d379527710cb58fb4ea352ea4149b68f2fa46746c7861a5f4d15bc4ac7c7db6caa938c1319bbe75d9fbbfc4b71c86b64567c2764d85bc79293277d949bebb1b71a21e0e409afe138ac4e55f985b8b8147bde8e6ad7f582893bba3470c0c5a454f23244442e7dad683fb97f3d200c35c851a333f3d1bf2c659f82d1da6012502ed0bcb6cc4a64db94e71723d3375db6d43630baa48ac960b71c3827f0bbd4ddc24941616aa00058bdd573da8fd5a3a129a9ce837960c9b906485c97f5198904faf8b2817d8cc2842ec1747b9d259fb7cdb77ef907e3177c70c1def95d15728c1 \
  --private-key=$PRIVATE_KEY --legacy
```

## Deploy

```
forge create --legacy --rpc-url $ETH_RPC_URL \
  --constructor-args "0xd8eC0C598A033d72554fac7807d4308a36Ba8910" \
  --private-key $PRIVATE_KEY src/DkimVerifier.sol:DkimVerifier
```
