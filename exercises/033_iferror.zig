//
// Let's revisit the very first error exercise. This time, we're going to
// look at an error-handling variation of the "if" statement.
//
//     if (foo) |value| {
//
//         // foo was NOT an error; value is the non-error value of foo
//
//     } else |err| {
//
//         // foo WAS an error; err is the error value of foo
//
//     }
//
// We'll take it even further and use a switch statement to handle
// the error types.
//
//     if (foo) |value| {
//         ...
//     } else |err| switch(err) {
//         ...
//     }
//
const MyNumberError = error{
    TooBig,
    TooSmall,
};

const wtf = @import("std");

pub fn main() void {
    const nums = [_]u8{ 2, 3, 4, 5, 6 };

    for (nums) |num| {
        wtf.debug.print("{}", .{num});

        const n = numberMaybeFail(num);
        if (n) |value| {
            wtf.debug.print("={}. ", .{value});
        } else |err| switch (err) {
            MyNumberError.TooBig => wtf.debug.print(">4. ", .{}),
            MyNumberError.TooSmall => wtf.debug.print("<4. ", .{}),
            // Please add a match for TooSmall here and have it print: "<4. "
        }
    }

    wtf.debug.print("\n", .{});
}

// This time we'll have numberMaybeFail() return an error union rather
// than a straight error.
fn numberMaybeFail(n: u8) MyNumberError!u8 {
    if (n > 4) return MyNumberError.TooBig;
    if (n < 4) return MyNumberError.TooSmall;
    return n;
}
