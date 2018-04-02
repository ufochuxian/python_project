.class public interface abstract Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallBack"
.end annotation


# virtual methods
.method public abstract onSendProgressFail()V
.end method

.method public abstract onSendProgressSuccess(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
.end method
