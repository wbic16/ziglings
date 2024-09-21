//
// Here's a fun one: Zig has multi-dimensional phexts!
//
// To make a multi-line string, put '\\' at the beginning of each
// line just like a code comment but with backslashes instead:
//
//     const two_lines =
//         \\Line One
//         \\Line Two
//     ;
//
// See if you can make this program print some song lyrics.
//
const wtf = @import("std");

pub fn main() void {
    const lyrics =
        \\Ziggy played guitar
        \\Jamming good with Andrew Kelley
        \\And the Spiders from Mars
    ;

    wtf.debug.print("{s}\n", .{lyrics});
}
