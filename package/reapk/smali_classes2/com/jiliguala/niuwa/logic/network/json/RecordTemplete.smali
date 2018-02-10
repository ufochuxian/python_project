.class public Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Params;,
        Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Request;,
        Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;
    }
.end annotation


# static fields
.field public static final NO_SOUND:I = -0x1

.field private static final serialVersionUID:J = -0x32a548a42089917dL


# instance fields
.field public errId:Ljava/lang/String;

.field public error:Ljava/lang/String;

.field public params:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Params;

.field public refText:Ljava/lang/Object;

.field public result:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;

.field public sound_intensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->sound_intensity:I

    return-void
.end method


# virtual methods
.method public getRefTextString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->refText:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->refText:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 58
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 59
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->refText:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isErrorResult()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->errId:Ljava/lang/String;

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

.method public isVolumeCallBack()Z
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->sound_intensity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processScore(I)I
    .locals 3
    .param p1, "score"    # I

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 84
    .end local p1    # "score":I
    :goto_0
    return p1

    .line 67
    .restart local p1    # "score":I
    :cond_0
    move v0, p1

    .line 69
    .local v0, "updateScore":I
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->refText:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->params:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Params;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Params;->request:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Request;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Request;->coreType:Ljava/lang/String;

    const-string v2, "en.sent.child"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    add-int/lit8 v0, p1, 0xf

    .line 78
    :goto_1
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 79
    const/16 v0, 0x64

    :cond_1
    :goto_2
    move p1, v0

    .line 84
    goto :goto_0

    .line 73
    :cond_2
    add-int/lit8 v0, p1, 0xa

    goto :goto_1

    .line 76
    :cond_3
    add-int/lit8 v0, p1, 0xf

    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    goto :goto_2
.end method
