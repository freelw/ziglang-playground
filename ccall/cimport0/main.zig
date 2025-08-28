const c = @cImport({
    @cDefine("_NO_CRT_STDIO_INLINE", "1");
    @cInclude("stdio.h");
    @cInclude("math.h");
});

pub fn main() !void {
    const x: f32 = 15.2;
    const y = c.powf(x, @as(f32, 2.6));
    _ = c.printf("%.3f\n", y);
}
