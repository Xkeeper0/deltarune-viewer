local.filename = self.argument0
local.file = file_text_open_read(local.filename)
local.json = ""@2240
while(true)
{
    if (file_text_eof(local.file) == 0)
    {
        local.json = (local.json + file_text_readln(local.file))
        continue
    }
    break
}
file_text_close(local.file)
return json_decode(local.json)
