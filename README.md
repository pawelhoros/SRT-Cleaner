# SRT-Cleaner
Removes known tags from srt files.

This is Windows powershell script that takes as argument srt file.
Cleaning is valid for srt format of subtitles. 
Script removes tags like &lt;i&gt; and &lt;/i&gt; and replaces original file.

Reg file creates explorer's contextual menu command that can be applied to srt file. <b>User has to change path to ps1 file before importing to registry.</b>

Full list of unwanted tags:
<ul>
<li>&lt;i&gt; and &lt;/i&gt;</li>
<li>&lt;b&gt; and &lt;/b&gt;</li>
<li>{*anything*} - anything in brackets {} like {y:b} and similar</li>
</ul>
