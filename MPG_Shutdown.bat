<!-- :: Batch section
@echo off
setlocal

echo "Computer has been idle for 15 minutes"
shutdown /s /t 120 /c "No activity detected: Shutting down PC in 2 minutes. Press Cancel button to prevent PC from shutting down"
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
echo "Shutdown cancelled..."
%HTAreply%
EXIT


<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >

<TITLE>MPG CAFE AUTOMATIC SHUTDOWN SCRIPT</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(374,300);

function btn_Cancel(){
   var command = "shutdown /a"
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(command);
   window.close();
}

</SCRIPT>
</HEAD>
<BODY>
    <h2 style="color:red"> <marquee behavior="alternate"> IMPORTANT REMINDER </marquee> </h2>
    <button style="font-size: 20px; border=none; text-align:center; color=white; background-color:#f44336" onclick="btn_Cancel();">CANCEL SHUTDOWN</button>
    <h4 style="text-align:center"><p> Press button to prevent PC from shutting down... </p> </h4>
</BODY>
</HTML>

