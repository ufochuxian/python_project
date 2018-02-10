.class public interface abstract Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/IPreStepView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;


# virtual methods
.method public abstract getDestFile()Ljava/io/File;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getSaveDir()Ljava/lang/String;
.end method

.method public abstract getSrcFile()Ljava/io/File;
.end method

.method public abstract updateProgress(I)V
.end method

.method public abstract updateText(Ljava/lang/String;)V
.end method
