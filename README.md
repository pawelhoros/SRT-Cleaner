# SRT-Cleaner
Removes known tags from srt files.

This is Windows powershell script that takes as argument srt file.
Cleaning is valid for srt format of subtitles. 
Script removes tags like &lt;i&gt; and &lt;/i&gt; and replaces original file.

Full list of unwanted tags:
<ul>
<li>&lt;i&gt; and &lt;/i&gt;</li>
<li>&lt;b&gt; and &lt;/b&gt;</li>
<li>{*anything*} - anything in brackets {} like {y:b} and similar</li>
</ul>

## Installation

1. Make sure that PowerShell scripts execution is enabled. Open command line as Administrator and type:

`powershell Set-ExecutionPolicy RemoteSigned`

2. Open Windows Explorer and type in address bar: `shell:sendTo` to open your sendTo folder.

3. Create a new shortcut and as a destination target type:

`C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -File C:\your\path\to\SRT-Cleaner-master\SRTcleaner.ps1`

(don't forget to replace path to your location), 
then as a name type your desired action name (ie: SRT Cleaner).

## Usage

Right click your .srt file and select from context menu Send To, then SRT Cleaner. The file will be cleaned up and replaced in it's original location.
You can select multiple files, all of them will be processed.
