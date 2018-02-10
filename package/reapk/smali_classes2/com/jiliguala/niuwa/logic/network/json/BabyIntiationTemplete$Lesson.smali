.class public Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lesson"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x263c3fa2dfa918d6L


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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasCTtl()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->cttl:Ljava/lang/String;

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

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->pic:Ljava/lang/String;

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

.method public hasTtl()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->ttl:Ljava/lang/String;

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

.method public isDone()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->status:Ljava/lang/String;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->status:Ljava/lang/String;

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnPay()Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->status:Ljava/lang/String;

    const-string v1, "rmb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
