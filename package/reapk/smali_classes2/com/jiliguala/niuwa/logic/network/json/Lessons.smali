.class public Lcom/jiliguala/niuwa/logic/network/json/Lessons;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x28683feb63d7fc43L


# instance fields
.field public _id:Ljava/lang/String;

.field public audio:Ljava/lang/String;

.field public buy:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public doneusers:I

.field public pay:Z

.field public score:F

.field public status:Ljava/lang/String;

.field public subs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;",
            ">;"
        }
    .end annotation
.end field

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasLessonID()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBuy1V1()Z
    .locals 2

    .prologue
    .line 45
    const-string v0, "buy1v1"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->buy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBuyRoadMap()Z
    .locals 2

    .prologue
    .line 49
    const-string v0, "buyroadmap"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->buy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 57
    const-string v0, "completed"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
