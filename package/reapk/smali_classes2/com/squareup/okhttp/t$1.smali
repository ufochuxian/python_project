.class final Lcom/squareup/okhttp/t$1;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/internal/a/q;
    .locals 1
    .param p1, "connection"    # Lcom/squareup/okhttp/i;
    .param p2, "httpEngine"    # Lcom/squareup/okhttp/internal/a/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/i;->a(Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/internal/a/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/d;
    .locals 1
    .param p1, "client"    # Lcom/squareup/okhttp/t;

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->g()Lcom/squareup/okhttp/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/e;)V
    .locals 1
    .param p1, "call"    # Lcom/squareup/okhttp/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p1, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/g;->k()V

    .line 130
    return-void
.end method

.method public a(Lcom/squareup/okhttp/e;Lcom/squareup/okhttp/f;Z)V
    .locals 0
    .param p1, "call"    # Lcom/squareup/okhttp/e;
    .param p2, "responseCallback"    # Lcom/squareup/okhttp/f;
    .param p3, "forWebSocket"    # Z

    .prologue
    .line 125
    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/f;Z)V

    .line 126
    return-void
.end method

.method public a(Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/Protocol;)V
    .locals 0
    .param p1, "connection"    # Lcom/squareup/okhttp/i;
    .param p2, "protocol"    # Lcom/squareup/okhttp/Protocol;

    .prologue
    .line 79
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/i;->a(Lcom/squareup/okhttp/Protocol;)V

    .line 80
    return-void
.end method

.method public a(Lcom/squareup/okhttp/i;Ljava/lang/Object;)V
    .locals 0
    .param p1, "connection"    # Lcom/squareup/okhttp/i;
    .param p2, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/i;->b(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public a(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/i;)V
    .locals 0
    .param p1, "pool"    # Lcom/squareup/okhttp/j;
    .param p2, "connection"    # Lcom/squareup/okhttp/i;

    .prologue
    .line 103
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/j;->a(Lcom/squareup/okhttp/i;)V

    .line 104
    return-void
.end method

.method public a(Lcom/squareup/okhttp/p$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lcom/squareup/okhttp/p$a;
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 92
    return-void
.end method

.method public a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/g;Lcom/squareup/okhttp/v;)V
    .locals 0
    .param p1, "client"    # Lcom/squareup/okhttp/t;
    .param p2, "connection"    # Lcom/squareup/okhttp/i;
    .param p3, "owner"    # Lcom/squareup/okhttp/internal/a/g;
    .param p4, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p2, p1, p3, p4}, Lcom/squareup/okhttp/i;->a(Lcom/squareup/okhttp/t;Ljava/lang/Object;Lcom/squareup/okhttp/v;)V

    .line 121
    return-void
.end method

.method public a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/internal/d;)V
    .locals 0
    .param p1, "client"    # Lcom/squareup/okhttp/t;
    .param p2, "internalCache"    # Lcom/squareup/okhttp/internal/d;

    .prologue
    .line 95
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/t;->a(Lcom/squareup/okhttp/internal/d;)V

    .line 96
    return-void
.end method

.method public a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/internal/f;)V
    .locals 0
    .param p1, "client"    # Lcom/squareup/okhttp/t;
    .param p2, "network"    # Lcom/squareup/okhttp/internal/f;

    .prologue
    .line 115
    invoke-static {p1, p2}, Lcom/squareup/okhttp/t;->a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/internal/f;)Lcom/squareup/okhttp/internal/f;

    .line 116
    return-void
.end method

.method public a(Lcom/squareup/okhttp/i;)Z
    .locals 1
    .param p1, "connection"    # Lcom/squareup/okhttp/i;

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/squareup/okhttp/i;->b()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/squareup/okhttp/i;)I
    .locals 1
    .param p1, "connection"    # Lcom/squareup/okhttp/i;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/squareup/okhttp/i;->o()I

    move-result v0

    return v0
.end method

.method public b(Lcom/squareup/okhttp/e;)Lcom/squareup/okhttp/i;
    .locals 1
    .param p1, "call"    # Lcom/squareup/okhttp/e;

    .prologue
    .line 133
    iget-object v0, p1, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/g;->i()Lcom/squareup/okhttp/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/i;
    .locals 1
    .param p1, "client"    # Lcom/squareup/okhttp/t;

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->r()Lcom/squareup/okhttp/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/g;)V
    .locals 0
    .param p1, "connection"    # Lcom/squareup/okhttp/i;
    .param p2, "httpEngine"    # Lcom/squareup/okhttp/internal/a/g;

    .prologue
    .line 83
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/i;->a(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public b(Lcom/squareup/okhttp/i;Ljava/lang/Object;)V
    .locals 0
    .param p1, "connection"    # Lcom/squareup/okhttp/i;
    .param p2, "owner"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/i;->a(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public c(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/f;
    .locals 1
    .param p1, "client"    # Lcom/squareup/okhttp/t;

    .prologue
    .line 111
    invoke-static {p1}, Lcom/squareup/okhttp/t;->a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/squareup/okhttp/i;)Z
    .locals 1
    .param p1, "pooled"    # Lcom/squareup/okhttp/i;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/squareup/okhttp/i;->g()Z

    move-result v0

    return v0
.end method
