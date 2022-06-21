tool
extends Node
class_name Editor

# Public functions

static func import(imagefile):
    var img = ImageTexture.new()
    img.load(imagefile)
    return img

static func save_image_texture(texture, path):
    if texture == null or typeof(texture) != TYPE_OBJECT or typeof(path) != TYPE_STRING:
        return ERR_INVALID_PARAMETER
    var img = null
    if texture is Image:
        img = texture
    elif texture is ImageTexture:
        img = texture.get_data()
    if img != null:
        return img.save_png(path)
    return ERR_INVALID_DATA

static func load_text_content(path):
    var file = File.new()
    if OK == file.open(path, File.READ):
        return file.get_as_text()
    return ""

static func save_text_content(text, path):
    var file = File.new()
    var err = file.open(path, File.WRITE)
    if OK == err:
        file.store_string(text)
    return err

static func path_join(p0, p1, p2='', p3='', p4='', p5='', p6='', p7='', p8='', p9=''):
    var args = [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9]
    var path = ""
    var index = -1
    for p in args:
        index += 1
        p = path_normalize(p)
        if p.empty():
            continue
        var sep = '/'
        if path.ends_with('/') or p.begins_with('/') or index <= 0:
            sep = ''
        path += str(sep, p)
    return path

static func path_under_dir(path, dir):
    var d = path_normalize(dir)
    if not d.ends_with('/'):
        d += '/'
    var p = path_normalize(path)
    return p.begins_with(d) and p != d

static func path_relative_to_parent_dir(path, dir):
    var p = path
    if path_under_dir(p, dir):
        p = path_normalize(p)
        var d = path_normalize(dir) + '/'
        p = p.substr(d.length(), p.length())
    return p

static func path_normalize(p_path):
    var replacement = {
        '\\': '/',
        '//': '/'
    }
    var path = p_path
    for key in replacement:
        path = path.replace(key, replacement[key])
    return path

static func list_dir(path):
    var pathes = []
    var dir = Directory.new()
    if dir.open(path) == OK:
        dir.list_dir_begin()
        var cwd = dir.get_next()
        while not cwd.empty():
            if not cwd in ['.', '..']:
                pathes.append(cwd)
            cwd = dir.get_next()
        dir.list_dir_end()
    return pathes

static func list_files(path, with_dirs=false,recurse=false):
    var files = []
    var dir = Directory.new()
    if dir.open(path) == OK:
        dir.list_dir_begin()
        var file_name = dir.get_next()
        while not file_name.empty():
            if dir.current_is_dir() and not (file_name in [".", "..", "./"]):
                if recurse:
                    var childfiles = list_files(str(path, "/", file_name), with_dirs, recurse)
                    for f in childfiles:
                        files.append(f)
            if not (file_name in [".", ".."]):
                var rpath = path
                if rpath.ends_with("/"):
                    pass
                elif rpath == ".":
                    rpath = ""
                else:
                    rpath += "/"
                if not with_dirs and dir.current_is_dir():
                    pass
                else:
                    rpath = str(rpath, file_name).replace("/./", "/")
                    files.append(rpath)
            file_name = dir.get_next()
    return files

static func format_time_duration(second: float, always_show_hours = false) -> String:
    var h = floor(second / (60.0 * 60.0))
    var m = floor((second - h * 60.0 * 60.0) / 60.0)
    var s = int(second) % 60
    var ret = ""
    if h > 0 or always_show_hours:
        if h < 10: ret += "0"
        ret += str(h, ":")
    if m < 10: ret += "0"
    ret += str(m, ":")
    if s < 10: ret += "0"
    ret += str(s)
    return ret

static func v4uuid():
    randomize()

    var b = []
    for index in range(0, 16):
        b.append(randi() % 256)

    b[6] = (b[6] & 0x0f) | 0x40
    b[8] = (b[8] & 0x3f) | 0x80

    var low = '%02x%02x%02x%02x' % [b[0], b[1], b[2], b[3]]
    var mid = '%02x%02x' % [b[4], b[5]]
    var hi = '%02x%02x' % [b[6], b[7]]
    var clock = '%02x%02x' % [b[8], b[9]]
    var node = '%02x%02x%02x%02x%02x%02x' % [b[10], b[11], b[12], b[13], b[14], b[15]]

    return '%s-%s-%s-%s-%s' % [low, mid, hi, clock, node]
