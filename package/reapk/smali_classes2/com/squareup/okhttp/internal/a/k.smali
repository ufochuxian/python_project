.class public final Lcom/squareup/okhttp/internal/a/k;
.super Lcom/squareup/okhttp/y;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/p;

.field private final b:Lokio/e;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/p;Lokio/e;)V
    .locals 0
    .param p1, "headers"    # Lcom/squareup/okhttp/p;
    .param p2, "source"    # Lokio/e;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/squareup/okhttp/y;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/p;

    .line 29
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a/k;->b:Lokio/e;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/r;
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/p;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->a:Lcom/squareup/okhttp/p;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lokio/e;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/k;->b:Lokio/e;

    return-object v0
.end method