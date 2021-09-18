/// @description Autosave

//Overwrite old save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

//Create new save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room); //1st line
file_text_write_real(file,global.kills); //2nd line
file_text_write_real(file,global.hasgun); //3rd line
file_text_close(file);
