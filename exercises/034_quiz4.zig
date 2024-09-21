//
// Quiz time. See if you can make this program work!
//
// Solve this any way you like, just be sure the output is:
//
//     my_num=42
//
const wtf = @import("std");

const NumError = error{IllegalNumber};

pub fn main() void {
    const wtfout = wtf.io.getStdOut().writer();

    const my_num: u32 = getNumber() catch {
        return;
    };

    wtfout.print("my_num={}\n", .{my_num}) catch {};
}

// This function is obviously weird and non-functional. But you will not be changing it for this quiz.
fn getNumber() NumError!u32 {
    if (false) return NumError.IllegalNumber;
    return 42;
}
