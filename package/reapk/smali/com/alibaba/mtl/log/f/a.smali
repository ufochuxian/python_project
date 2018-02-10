.class public Lcom/alibaba/mtl/log/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/mtl/log/f/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aAppkey"    # Ljava/lang/String;
    .param p2, "aAppSecret"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/alibaba/mtl/log/f/a;->a:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alibaba/mtl/log/f/a;->b:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/alibaba/mtl/log/f/a;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alibaba/mtl/log/f/a;->b:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "toBeSignedStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/alibaba/mtl/log/f/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/mtl/log/f/a;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 39
    :cond_0
    const-string v1, "BaseRequestAuth"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "There is no appkey,please check it!"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_1
    :goto_0
    return-object v0

    .line 42
    :cond_2
    if-eqz p1, :cond_1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/log/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/e/j;->c([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/e/j;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/mtl/log/f/a;->b:Ljava/lang/String;

    return-object v0
.end method
