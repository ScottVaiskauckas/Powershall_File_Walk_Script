function walk($Path){
    $Directories = get-Childitem -Directory $Path;
    $Files = get-Childitem -File $Path;

    Foreach($File in $Files){
        echo($File.name);
    }

    Foreach($Directory in $Directories){
        echo($Directory.name);
        walk($Path + "\$Directory")
    }
}

walk("C:\Users\Scott\Desktop\test_folder");
