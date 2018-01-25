SET Notepad_CMD="notepad"
 
IF EXIST "C:\test\File1" (
   IF EXIST "C:\test\File2" (
      IF EXIST "C:\test\File3" (
        echo ""
      ) ELSE (
	    start "" /wait %Notepad_CMD% 
        date /T > "C:\test\File3"
	    time /T >> "C:\test\File3"
      )
   ) ELSE (
	 start "" /wait %Notepad_CMD% 
   	 date /T > "C:\test\File2"
     time /T >> "C:\test\File2"
   )
) ELSE (
  start "" /wait %Notepad_CMD% 
  date /T > "C:\test\File1"
  time /T >> "C:\test\File1"
)

timeout /t 30
exit