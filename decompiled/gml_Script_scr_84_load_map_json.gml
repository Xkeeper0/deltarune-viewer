var filename = self.argument0
var file = file_text_open_read(filename)
var json = ""
while (file_text_eof(file) == 0)
    json += file_text_readln(file)
file_text_close(file)
return json_decode(json);
