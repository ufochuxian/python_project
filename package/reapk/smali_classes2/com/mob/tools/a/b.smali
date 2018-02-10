.class public Lcom/mob/tools/a/b;
.super Lcom/mob/tools/a/f;
.source "SourceFile"


# instance fields
.field private a:Lcom/mob/tools/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mob/tools/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/mob/tools/a/b;
    .locals 2
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/mob/tools/a/a;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/mob/tools/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    invoke-virtual {v0, p1}, Lcom/mob/tools/a/a;->write([B)V

    .line 15
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    invoke-virtual {v0}, Lcom/mob/tools/a/a;->flush()V

    .line 16
    return-object p0
.end method

.method protected a()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 20
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v2, v3, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 29
    :goto_0
    return-object v1

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    invoke-virtual {v1}, Lcom/mob/tools/a/a;->a()[B

    move-result-object v0

    .line 25
    .local v0, "body":[B
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    invoke-virtual {v1}, Lcom/mob/tools/a/a;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 26
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v2, v3, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 29
    :cond_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    invoke-virtual {v2}, Lcom/mob/tools/a/a;->size()I

    move-result v2

    invoke-direct {v1, v0, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_0
.end method

.method protected b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    invoke-virtual {v0}, Lcom/mob/tools/a/a;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    if-nez v2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-object v1

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    invoke-virtual {v2}, Lcom/mob/tools/a/a;->a()[B

    move-result-object v0

    .line 38
    .local v0, "body":[B
    if-eqz v0, :cond_0

    .line 42
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Lcom/mob/tools/a/a;

    invoke-virtual {v2}, Lcom/mob/tools/a/a;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/d;->a([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
