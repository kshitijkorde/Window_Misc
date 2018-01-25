$drives_before = (Get-Volume).DriveLetter
Mount-DiskImage FileName.iso
$drives_after = (Get-Volume).DriveLetter
$next_drive = $drives_after | Where {$drives_before -NotContains $_}
Dismount-DiskImage FileName.iso
