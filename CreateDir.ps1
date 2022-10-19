$d = "C:\Users\lenovo\Desktop\file\"

$i = for ($i = 0; $i -le 19; $i++)
{
    "{00:00}" -f $i
}

foreach ($id in $i)
{
    $f = $d + "file" + $id

    if ((test-path $f) -eq "True")
        {remove-item -r $d
        mkdir $f}
    else
        {mkdir $f}
}
