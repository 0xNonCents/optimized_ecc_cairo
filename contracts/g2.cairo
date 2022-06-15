%lang starknet
%builtins range_check bitwise

from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from lib.g2 import G2Point, g2_lib
from lib.uint384 import Uint384

@view
func eq{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(x : G2Point, y : G2Point) -> (bool : felt):
    alloc_locals
    let (res) = g2_lib.eq(x, y)

    return (res)
end

@view
func add{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(x : G2Point, y : G2Point) -> (
    res : G2Point
):
    alloc_locals
    let (res : G2Point) = g2_lib.add(x, y)

    return (res)
end

@view
func scalar_mul{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(scalar :Uint384, x : G2Point) -> (
    res : G2Point
):
    alloc_locals
    let (res : G2Point) = g2_lib.scalar_mul(scalar, x)

    return (res)
end

@view
func add_three{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(x : G2Point) -> (
    res : G2Point
):
    alloc_locals
    let (res0 : G2Point) = g2_lib.add(x, x)
    let (res1 : G2Point) = g2_lib.add(res0, x)

    return (res1)
end


@view
func double{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(x : G2Point) -> (
    res : G2Point
):
    alloc_locals
    let (res : G2Point) = g2_lib.double(x)

    return (res)
end