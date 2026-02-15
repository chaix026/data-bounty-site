Add-Type -AssemblyName System.Drawing

$imagePath = "g:\My Drive\Data Bounty\website\Logo\Data Bounty LLC-mg-white.png"

if (-not (Test-Path $imagePath)) {
    Write-Host "Error: Image not found at $imagePath"
    exit 1
}

try {
    $bmp = [System.Drawing.Bitmap]::FromFile($imagePath)
}
catch {
    Write-Host "Error loading image: $_"
    exit 1
}

$colors = @{}

# Sample pixels (every 10th pixel to speed up)
for ($x = 0; $x -lt $bmp.Width; $x += 10) {
    for ($y = 0; $y -lt $bmp.Height; $y += 10) {
        if ($x -lt $bmp.Width -and $y -lt $bmp.Height) {
            $pixel = $bmp.GetPixel($x, $y)
            if ($pixel.A -gt 200) {
                # Ignore transparent/translucent
                $hex = "#{0:X2}{1:X2}{2:X2}" -f $pixel.R, $pixel.G, $pixel.B
                if ($colors.ContainsKey($hex)) {
                    $colors[$hex] = $colors[$hex] + 1
                }
                else {
                    $colors[$hex] = 1
                }
            }
        }
    }
}

$sortedColors = $colors.GetEnumerator() | Sort-Object Value -Descending | Select-Object -First 5

Write-Host "Dominant Colors:"
foreach ($color in $sortedColors) {
    Write-Host "$($color.Name): $($color.Value)"
}

$bmp.Dispose()
