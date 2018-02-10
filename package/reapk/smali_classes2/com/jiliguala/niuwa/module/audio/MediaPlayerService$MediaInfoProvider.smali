.class public interface abstract Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$MediaInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaInfoProvider"
.end annotation


# virtual methods
.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract moveToNext()Z
.end method

.method public abstract moveToPrev()Z
.end method
