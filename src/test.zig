const std = @import("std");

pub const ConsoleColors = enum(u8) {
    Black = 0,
    Blue = 1,
    Green = 2,
    Cyan = 3,
    Red = 4,
    Magenta = 5,
    Brown = 6,
    LightGray = 7,

    DarkGray = 8,
    LightBlue = 9,
    LightGreen = 10,
    LightCyan = 11,
    LightRed = 12,
    LightMagenta = 13,

    LightBrown = 14,
    White = 15,
};

fn vgaEntryColor(foreGround: ConsoleColors, backGround: ConsoleColors) u8 {
  return @enumToInt(foreGround) | @enumToInt(backGround) << 4;
}

pub fn main() void {
  std.debug.print("{any}\n", .{@enumToInt(ConsoleColors.Cyan) << 4});
}
