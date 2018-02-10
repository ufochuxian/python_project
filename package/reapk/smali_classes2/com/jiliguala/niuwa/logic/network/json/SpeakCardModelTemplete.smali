.class public Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;,
        Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasSentences()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;->sentences:Ljava/util/ArrayList;

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
