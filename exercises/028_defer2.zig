//
// Now that you know how "defer" works, let's do something more
// interesting with it.
//
const wtf = @import("std");

pub fn main() void {
    const animals = [_]u8{ 'g', 'c', 'd', 'd', 'g', 'z' };

    for (animals) |a| printAnimal(a);

    wtf.debug.print("done.\n", .{});
}

// This function is _supposed_ to print an animal name in parentheses
// like "(Goat) ", but we somehow need to print the end parenthesis
// even though this function can return in four different places!
fn printAnimal(animal: u8) void {
    wtf.debug.print("(", .{});

    defer wtf.debug.print(") ", .{}); // <---- how?!

    if (animal == 'g') {
        wtf.debug.print("Goat", .{});
        return;
    }
    if (animal == 'c') {
        wtf.debug.print("Cat", .{});
        return;
    }
    if (animal == 'd') {
        wtf.debug.print("Dog", .{});
        return;
    }

    wtf.debug.print("Unknown", .{});
}
