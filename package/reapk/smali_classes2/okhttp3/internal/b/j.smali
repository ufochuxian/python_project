.class public final Lokhttp3/internal/b/j;
.super Lokhttp3/ad;
.source "SourceFile"


# instance fields
.field private final a:Lokhttp3/t;

.field private final b:Lokio/e;


# direct methods
.method public constructor <init>(Lokhttp3/t;Lokio/e;)V
    .locals 0
    .param p1, "headers"    # Lokhttp3/t;
    .param p2, "source"    # Lokio/e;

    .prologue
    .line 27
    invoke-direct {p0}, Lokhttp3/ad;-><init>()V

    .line 28
    iput-object p1, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/t;

    .line 29
    iput-object p2, p0, Lokhttp3/internal/b/j;->b:Lokio/e;

    .line 30
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/t;

    invoke-static {v0}, Lokhttp3/internal/b/f;->a(Lokhttp3/t;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/w;
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lokhttp3/internal/b/j;->a:Lokhttp3/t;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public source()Lokio/e;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/internal/b/j;->b:Lokio/e;

    return-object v0
.end method
