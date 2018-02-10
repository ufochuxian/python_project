.class public interface abstract Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayBackInterface"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/String;II)Z
.end method

.method public abstract onPrepared()V
.end method
