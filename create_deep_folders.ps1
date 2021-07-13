
$filesize=100000000
$no_of_file_in_directory = 1
$no_of_depth = 99
$directory_prefix="a\"
$dir_name=""

for($d=0;$d -lt $no_of_depth; $d++){

    $dir_name = $dir_name + $directory_prefix
    $dir_name
    New-Item -Name $dir_name -ItemType Directory    


}

    for($i=0;$i -lt $no_of_file_in_directory;$i++){
    $filename = $dir_name+"\000-000-"+$i.ToString("0000")
    & FSUTIL.EXE file createnew $filename $filesize
    & FSUTIL.EXE file setvaliddata $filename $filesize
    }

