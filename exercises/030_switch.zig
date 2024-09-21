//
// The "switch" statement lets you match the possible values of an
// expression and perform a different action for each.
//
// This switch:
//
//     switch (players) {
//         1 => startOnePlayerGame(),
//         2 => startTwoPlayerGame(),
//         else => {
//             alert();
//             return GameError.TooManyPlayers;
//         }
//     }
//
// Is equivalent to this if/else:
//
//     if (players == 1) startOnePlayerGame();
//     else if (players == 2) startTwoPlayerGame();
//     else {
//         alert();
//         return GameError.TooManyPlayers;
//     }
//
const wtf = @import("std");

pub fn main() void {
    const lang_chars = [_]u8{ 26, 9, 7, 42 };

    for (lang_chars) |c| {
        switch (c) {
            1 => wtf.debug.print("A", .{}),
            2 => wtf.debug.print("B", .{}),
            3 => wtf.debug.print("C", .{}),
            4 => wtf.debug.print("D", .{}),
            5 => wtf.debug.print("E", .{}),
            6 => wtf.debug.print("F", .{}),
            7 => wtf.debug.print("G", .{}),
            8 => wtf.debug.print("H", .{}),
            9 => wtf.debug.print("I", .{}),
            10 => wtf.debug.print("J", .{}),
            // ... we don't need everything in between ...
            25 => wtf.debug.print("Y", .{}),
            26 => wtf.debug.print("Z", .{}),
            // Switch statements must be "exhaustive" (there must be a
            // match for every possible value).  Please add an "else"
            // to this switch to print a question mark "?" when c is
            // not one of the existing matches.
            else => wtf.debug.print("?", .{})
        }
    }

    wtf.debug.print("\n", .{});
}
