.class public final Lcn/jpush/a/d;
.super Lcn/jiguang/api/JResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcn/jiguang/api/JResponse;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "UpdateRidResponse"

    return-object v0
.end method

.method protected final isNeedParseeErrorMsg()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public final parseBody()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcn/jiguang/api/JResponse;->parseBody()V

    .line 37
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[UpdateRidResponse] - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcn/jiguang/api/JResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeBody()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcn/jiguang/api/JResponse;->writeBody()V

    .line 21
    return-void
.end method
