.class public Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QualityStoryLesson"
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public burl:Ljava/lang/String;

.field public cttl:Ljava/lang/String;

.field public index:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public surl:Ljava/lang/String;

.field public tgt:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDone()Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->status:Ljava/lang/String;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->status:Ljava/lang/String;

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnPay()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->status:Ljava/lang/String;

    const-string v1, "rmb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
