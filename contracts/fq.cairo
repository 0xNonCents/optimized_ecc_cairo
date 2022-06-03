%lang starknet
%builtins range_check bitwise

from lib.fq import fq
from lib.uint384 import Uint384, uint384_lib
from lib.uint384_extension import Uint768
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin

# Returns the current balance.
@view
func add{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(x : Uint384, y : Uint384) -> (
        res : Uint384):
    alloc_locals
    let (res : Uint384) = fq.add(x, y)

    return (res)
end

@view
func sub{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(x : Uint384, y : Uint384) -> (
        res : Uint384):
    alloc_locals

    let (res : Uint384) = fq.sub(x, y)

    return (res)
end

@view
func mul{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(x : Uint384, y : Uint384) -> (
        res : Uint384):
    alloc_locals

    let (res : Uint384) = fq.mul(x, y)

    return (res)
end

@view
func square{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(x : Uint384) -> (res : Uint384):
    alloc_locals

    let (res : Uint384) = fq.square(x)

    return (res)
end
