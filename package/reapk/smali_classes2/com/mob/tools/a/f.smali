.class public abstract Lcom/mob/tools/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Lcom/mob/tools/a/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public a(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/mob/tools/a/f;->a:J

    .line 16
    return-void
.end method

.method public a(Lcom/mob/tools/a/o;)V
    .locals 0
    .param p1, "l"    # Lcom/mob/tools/a/o;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mob/tools/a/f;->b:Lcom/mob/tools/a/o;

    .line 36
    return-void
.end method

.method protected abstract b()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public c()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/mob/tools/a/c;

    invoke-virtual {p0}, Lcom/mob/tools/a/f;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/a/c;-><init>(Ljava/io/InputStream;)V

    .line 20
    .local v0, "is":Lcom/mob/tools/a/c;
    iget-object v1, p0, Lcom/mob/tools/a/f;->b:Lcom/mob/tools/a/o;

    invoke-virtual {v0, v1}, Lcom/mob/tools/a/c;->a(Lcom/mob/tools/a/o;)V

    .line 21
    iget-wide v2, p0, Lcom/mob/tools/a/f;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 22
    iget-wide v2, p0, Lcom/mob/tools/a/f;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/a/c;->skip(J)J

    .line 24
    :cond_0
    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/mob/tools/a/f;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 29
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/mob/tools/a/f;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mob/tools/a/f;->a:J

    sub-long v2, v4, v6

    .line 30
    .local v2, "length":J
    const-string v1, "org.apache.http.entity.InputStreamEntity"

    invoke-static {v1}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    const-string v1, "InputStreamEntity"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
