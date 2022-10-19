$d = "C:\test\"

$i = for ($i=0; $i -le 19; $i++)
    {"{00:00}" -f $i}

foreach ($id in $i)
    {
        $f = $d + "File" + $id + ".txt"
        
        if ((Test-Path $f) -eq "True")
            {Remove-Item -r $d
            mkdir $d
            New-Item $f
            Write-Output "File$id" | Out-File $f
            }

        else {
            mkdir $d
            New-Item $f
            Write-Output "File$id" | Out-File $f
        }
    }
