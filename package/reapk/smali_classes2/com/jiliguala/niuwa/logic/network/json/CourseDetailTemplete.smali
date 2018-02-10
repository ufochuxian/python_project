.class public Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;,
        Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Course;,
        Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasAgeData()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;->cat:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Cat;->age:Ljava/util/List;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 26
    :cond_0
    :goto_0
    return v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete$Data;->courses:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
