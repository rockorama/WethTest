# @version 0.3.8

"""
@title Deposit Weth Test
"""

import interfaces.external.Weth as Weth
WETH: constant(address) = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2
@external
@payable
def wrap():
    assert msg.value != 0
    weth: Weth = Weth(WETH)
    weth.deposit(value=msg.value)
    weth.transfer(msg.sender, msg.value)