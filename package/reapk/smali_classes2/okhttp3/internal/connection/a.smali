.class public final Lokhttp3/internal/connection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# instance fields
.field public final a:Lokhttp3/y;


# direct methods
.method public constructor <init>(Lokhttp3/y;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/y;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lokhttp3/internal/connection/a;->a:Lokhttp3/y;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/v$a;)Lokhttp3/ac;
    .locals 8
    .param p1, "chain"    # Lokhttp3/v$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v3, p1

    check-cast v3, Lokhttp3/internal/b/i;

    .line 37
    .local v3, "realChain":Lokhttp3/internal/b/i;
    invoke-virtual {v3}, Lokhttp3/internal/b/i;->a()Lokhttp3/aa;

    move-result-object v4

    .line 38
    .local v4, "request":Lokhttp3/aa;
    invoke-virtual {v3}, Lokhttp3/internal/b/i;->c()Lokhttp3/internal/connection/f;

    move-result-object v5

    .line 41
    .local v5, "streamAllocation":Lokhttp3/internal/connection/f;
    invoke-virtual {v4}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 42
    .local v1, "doExtensiveHealthChecks":Z
    :goto_0
    iget-object v6, p0, Lokhttp3/internal/connection/a;->a:Lokhttp3/y;

    invoke-virtual {v5, v6, v1}, Lokhttp3/internal/connection/f;->a(Lokhttp3/y;Z)Lokhttp3/internal/b/h;

    move-result-object v2

    .line 43
    .local v2, "httpStream":Lokhttp3/internal/b/h;
    invoke-virtual {v5}, Lokhttp3/internal/connection/f;->b()Lokhttp3/internal/connection/c;

    move-result-object v0

    .line 45
    .local v0, "connection":Lokhttp3/internal/connection/c;
    invoke-virtual {v3, v4, v5, v2, v0}, Lokhttp3/internal/b/i;->a(Lokhttp3/aa;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/h;Lokhttp3/j;)Lokhttp3/ac;

    move-result-object v6

    return-object v6

    .line 41
    .end local v0    # "connection":Lokhttp3/internal/connection/c;
    .end local v1    # "doExtensiveHealthChecks":Z
    .end local v2    # "httpStream":Lokhttp3/internal/b/h;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
