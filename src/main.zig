const std = @import("std");

pub fn main() !void {
    const frames = [12][]const u8{
        "⠁ ",
        "⠈ ",
        " ⠁",
        " ⠈",
        " ⠐",
        " ⠠",
        " ⢀",
        " ⡀",
        "⢀ ",
        "⡀ ",
        "⠄ ",
        "⠂ ",
    };

    while (true) {
        for (frames) |frame| {
            std.debug.print("\r{s}", .{frame});
            std.time.sleep(80000000);
        }
    }
}
