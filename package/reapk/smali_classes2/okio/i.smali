.class public Lokio/i;
.super Lokio/y;
.source "SourceFile"


# instance fields
.field private a:Lokio/y;


# direct methods
.method public constructor <init>(Lokio/y;)V
    .locals 2
    .param p1, "delegate"    # Lokio/y;

    .prologue
    .line 25
    invoke-direct {p0}, Lokio/y;-><init>()V

    .line 26
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lokio/i;->a:Lokio/y;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lokio/y;)Lokio/i;
    .locals 2
    .param p1, "delegate"    # Lokio/y;

    .prologue
    .line 36
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lokio/i;->a:Lokio/y;

    .line 38
    return-object p0
.end method

.method public final a()Lokio/y;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lokio/i;->a:Lokio/y;

    return-object v0
.end method

.method public a(J)Lokio/y;
    .locals 1
    .param p1, "deadlineNanoTime"    # J

    .prologue
    .line 58
    iget-object v0, p0, Lokio/i;->a:Lokio/y;

    invoke-virtual {v0, p1, p2}, Lokio/y;->a(J)Lokio/y;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lokio/y;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 42
    iget-object v0, p0, Lokio/i;->a:Lokio/y;

    invoke-virtual {v0, p1, p2, p3}, Lokio/y;->a(JLjava/util/concurrent/TimeUnit;)Lokio/y;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lokio/i;->a:Lokio/y;

    invoke-virtual {v0}, Lokio/y;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lokio/y;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lokio/i;->a:Lokio/y;

    invoke-virtual {v0}, Lokio/y;->f()Lokio/y;

    move-result-object v0

    return-object v0
.end method

.method public f_()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lokio/i;->a:Lokio/y;

    invoke-virtual {v0}, Lokio/y;->f_()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lokio/i;->a:Lokio/y;

    invoke-virtual {v0}, Lokio/y;->g()V

    .line 71
    return-void
.end method

.method public g_()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lokio/i;->a:Lokio/y;

    invoke-virtual {v0}, Lokio/y;->g_()Z

    move-result v0

    return v0
.end method

.method public h_()Lokio/y;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lokio/i;->a:Lokio/y;

    invoke-virtual {v0}, Lokio/y;->h_()Lokio/y;

    move-result-object v0

    return-object v0
.end method
