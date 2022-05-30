Delegatecall is tricky to use and wrong usage or incorrect understanding can lead to devastating results.

You must keep 2 things in mind when using delegatecall

1.delegatecall preserves context (storage, caller, etc...)
2.storage layout must be the same for the contract calling delegatecall and the contract getting called

### Preventative Techniques

    Use stateless Library