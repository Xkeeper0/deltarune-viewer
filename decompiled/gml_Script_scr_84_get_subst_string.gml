var str = self.argument[0]
var sub_id = 1
self.length = string_length(str)
self.pos = 0
while (sub_id < self.argument_count)
{
    var sub = ("~" + string(sub_id))
    str = string_replace_all(str, sub, self.argument[sub_id])
    sub_id += 1
}
return str;
