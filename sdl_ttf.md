module sdl.ttf

const major_version = C.SDL_TTF_MAJOR_VERSION // 2
const minor_version = C.SDL_TTF_MINOR_VERSION // 0
const patchlevel = C.SDL_TTF_PATCHLEVEL // 15
const unicode_bom_native = C.UNICODE_BOM_NATIVE // 0xFEFF
const unicode_bom_swapped = C.UNICODE_BOM_SWAPPED // 0xFFFE
const style_normal = C.TTF_STYLE_NORMAL // 0x00
const style_bold = C.TTF_STYLE_BOLD // 0x01
const style_italic = C.TTF_STYLE_ITALIC // 0x02
const style_underline = C.TTF_STYLE_UNDERLINE // 0x04
const style_strikethrough = C.TTF_STYLE_STRIKETHROUGH // 0x08
const hinting_normal = C.TTF_HINTING_NORMAL // 0
const hinting_light = C.TTF_HINTING_LIGHT // 1
const hinting_mono = C.TTF_HINTING_MONO // 2
const hinting_none = C.TTF_HINTING_NONE // 3
fn C.SDL_TTF_VERSION_ATLEAST(x int, y int, z int) bool
fn byte_swapped_unicode(swapped int)
fn close_font(font &Font)
fn compiledversion() int
fn font_ascent(font &Font) int
fn font_descent(font &Font) int
fn font_face_family_name(font &Font) &char
fn font_face_is_fixed_width(font &Font) int
fn font_face_style_name(font &Font) &char
fn font_faces(font &Font) int
fn font_height(font &Font) int
fn font_line_skip(font &Font) int
fn get_font_hinting(font &Font) int
fn get_font_kerning(font &Font) int
fn get_font_kerning_size_glyphs(font &Font, previous_ch u16, ch u16) int
fn get_font_outline(font &Font) int
fn get_font_style(font &Font) int
fn glyph_is_provided(font &Font, ch u16) int
fn glyph_metrics(font &Font, ch u16, minx &int, maxx &int, miny &int, maxy &int, advance &int) int
fn init() int
fn linked_version() &sdl.Version
fn open_font(file &char, ptsize int) &Font
fn open_font_index(file &char, ptsize int, index int) &Font
fn open_font_index_rw(src &sdl.RWops, freesrc int, ptsize int, index int) &Font
fn open_font_rw(src &sdl.RWops, freesrc int, ptsize int) &Font
fn quit()
fn render_glyph_blended(font &Font, ch u16, fg sdl.Color) &sdl.Surface
fn render_glyph_shaded(font &Font, ch u16, fg sdl.Color, bg sdl.Color) &sdl.Surface
fn render_glyph_solid(font &Font, ch u16, fg sdl.Color) &sdl.Surface
fn render_text_blended(font &Font, const_text &char, fg sdl.Color) &sdl.Surface
fn render_text_blended_wrapped(font &Font, const_text &char, fg sdl.Color, wrap_length u32) &sdl.Surface
fn render_text_shaded(font &C.TTF_Font, const_text &char, fg sdl.Color, bg sdl.Color) &sdl.Surface
fn render_text_solid(font &Font, const_text &char, fg sdl.Color) &sdl.Surface
fn render_unicode_blended(font &Font, const_text &u16, fg sdl.Color) &sdl.Surface
fn render_unicode_blended_wrapped(font &Font, const_text &u16, fg sdl.Color, wrap_length u32) &sdl.Surface
fn render_unicode_shaded(font &Font, const_text &u16, fg sdl.Color, bg sdl.Color) &sdl.Surface
fn render_unicode_solid(font &Font, const_text &u16, fg sdl.Color) &sdl.Surface
fn render_utf8_blended(font &Font, const_text &char, fg sdl.Color) &sdl.Surface
fn render_utf8_blended_wrapped(font &Font, const_text &char, fg sdl.Color, wrap_length u32) &sdl.Surface
fn render_utf8_shaded(font &Font, const_text &char, fg sdl.Color, bg sdl.Color) &sdl.Surface
fn render_utf8_solid(font &Font, const_text &char, fg sdl.Color) &sdl.Surface
fn set_font_hinting(font &Font, hinting int)
fn set_font_kerning(font &Font, allowed int)
fn set_font_outline(font &Font, outline int)
fn set_font_style(font &Font, style int)
fn size_text(font &Font, const_text &char, w &int, h &int) int
fn size_unicode(font &C.TTF_Font, const_text &u16, w &int, h &int) int
fn size_utf8(font &Font, const_text &char, w &int, h &int) int
fn ttf_version(v &sdl.Version)
fn ttf_version_atleast(x int, y int, z int) bool
fn was_init() int
type Font = C.TTF_Font
struct C.TTF_Font {
}
