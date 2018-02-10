.class public Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Course"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xac9e5af4305d14bL


# instance fields
.field public _id:Ljava/lang/String;

.field public bicon:Ljava/lang/String;

.field public cat:Ljava/lang/String;

.field public courseid:Ljava/lang/String;

.field public cttl:Ljava/lang/String;

.field public done:Ljava/lang/String;

.field public iconttl:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLock()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->status:Ljava/lang/String;

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPlay()Z
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->status:Ljava/lang/String;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRmb()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->status:Ljava/lang/String;

    const-string v1, "rmb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnPay()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete$Course;->status:Ljava/lang/String;

    const-string v1, "rmb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
