.class public final Lcn/jpush/a/b;
.super Lcn/jiguang/api/JRequest;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/jiguang/api/JRequest;-><init>(IIJ)V

    .line 35
    iput-object p5, p0, Lcn/jpush/a/b;->a:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcn/jpush/a/b;->b:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/jpush/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "TagaliasRequest"

    return-object v0
.end method

.method protected final isNeedParseeErrorMsg()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public final parseBody()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcn/jpush/a/b;->body:Ljava/nio/ByteBuffer;

    .line 24
    invoke-static {v0}, Lcn/jiguang/api/utils/ProtocolUtil;->getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/jpush/a/b;->a:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Lcn/jiguang/api/utils/ProtocolUtil;->getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/b;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TagaliasRequest] - appKey:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-super {p0}, Lcn/jiguang/api/JRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeBody()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/jpush/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/jpush/a/b;->writeTlv2(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcn/jpush/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/jpush/a/b;->writeTlv2(Ljava/lang/String;)V

    .line 43
    return-void
.end method
