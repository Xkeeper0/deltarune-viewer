var list = self.argument[0]
for (var i = 1; i < self.argument_count; i += 1)
    ds_list_add(list, self.argument[i])
