/// ReadJsonFile(Filename)
var Filename = argument0;

var directory = working_directory + "Maps\" + Filename;
var JsonFile = file_text_open_read(working_directory + "Maps\" + Filename);

var str = "";
while !file_text_eof(JsonFile)
{
    str += file_text_readln(JsonFile);
}

file_text_close(JsonFile);

return str;
