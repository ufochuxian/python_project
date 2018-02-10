.class public Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Course"
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public cat:Ljava/lang/String;

.field public cttl:Ljava/lang/String;

.field public done:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLock()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->status:Ljava/lang/String;

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPlay()Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->status:Ljava/lang/String;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRmb()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;->status:Ljava/lang/String;

    const-string v1, "rmb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
