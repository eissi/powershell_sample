
$filesize=100000000
$no_of_file_in_directory = 10
$no_of_directory = 2
$directory_prefix="2021-06-0"

for($d=0;$d -lt $no_of_directory; $d++){

    $dir_name = $directory_prefix+$d
    New-Item -Name $dir_name -ItemType Directory    

    for($i=0;$i -lt $no_of_file_in_directory;$i++){
    $filename = $dir_name+"\000-000-"+$i.ToString("0000")
    & FSUTIL.EXE file createnew $filename $filesize
    & FSUTIL.EXE file setvaliddata $filename $filesize
    }

}