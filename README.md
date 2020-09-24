<div align="center">

## Really Simple Load Custom Resource


</div>

### Description

I decided to wrote this article after a long time trying to find a way to load custom resources that cant be load as "normal" ... all i can find is really complicated DLL's and huge and confuzing codes ... so i decide to show a really simple way.

I will show how to load an flash animation but you can do this with anything.

I will also put a sample on a ZIP in case that you have some problem with copy and paste

All you have to do is create your resource file as normal puting anything you want (JPG, EXE, SWF, Etc...) as custom resources.

And then write the resource to a file and load it.

Private Sub Form_Load()

Dim M() As Byte

M = LoadResData(1, "SWF")

Open "c:\windows\desktop\m.swf" For Binary Access Write As 1

Put #1, , M

Close 1

SF.Movie = "c:\windows\desktop\m.swf"

End Sub

Private Sub Form_Unload(Cancel As Integer)

Kill "c:\windows\desktop\m.swf"

End Sub
 
### More Info
 


<span>             |<span>
---                |---
**Submitted On**   |2003-09-02 19:55:18
**By**             |[Zani](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByAuthor/zani.md)
**Level**          |Beginner
**User Rating**    |5.0 (20 globes from 4 users)
**Compatibility**  |VB 4\.0 \(32\-bit\), VB 5\.0, VB 6\.0
**Category**       |[Files/ File Controls/ Input/ Output](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByCategory/files-file-controls-input-output__1-3.md)
**World**          |[Visual Basic](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByWorld/visual-basic.md)
**Archive File**   |[Really\_Sim164272982003\.zip](https://github.com/Planet-Source-Code/zani-really-simple-load-custom-resource__1-48342/archive/master.zip)








