.class Lokhttp3/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/c;


# direct methods
.method constructor <init>(Lokhttp3/c;)V
    .locals 0
    .param p1, "this$0"    # Lokhttp3/c;

    .prologue
    .line 142
    iput-object p1, p0, Lokhttp3/c$1;->a:Lokhttp3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/aa;)Lokhttp3/ac;
    .locals 1
    .param p1, "request"    # Lokhttp3/aa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lokhttp3/c$1;->a:Lokhttp3/c;

    invoke-virtual {v0, p1}, Lokhttp3/c;->a(Lokhttp3/aa;)Lokhttp3/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/ac;)Lokhttp3/internal/a/b;
    .locals 1
    .param p1, "response"    # Lokhttp3/ac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lokhttp3/c$1;->a:Lokhttp3/c;

    invoke-static {v0, p1}, Lokhttp3/c;->a(Lokhttp3/c;Lokhttp3/ac;)Lokhttp3/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lokhttp3/c$1;->a:Lokhttp3/c;

    invoke-static {v0}, Lokhttp3/c;->a(Lokhttp3/c;)V

    .line 161
    return-void
.end method

.method public a(Lokhttp3/ac;Lokhttp3/ac;)V
    .locals 1
    .param p1, "cached"    # Lokhttp3/ac;
    .param p2, "network"    # Lokhttp3/ac;

    .prologue
    .line 156
    iget-object v0, p0, Lokhttp3/c$1;->a:Lokhttp3/c;

    invoke-static {v0, p1, p2}, Lokhttp3/c;->a(Lokhttp3/c;Lokhttp3/ac;Lokhttp3/ac;)V

    .line 157
    return-void
.end method

.method public a(Lokhttp3/internal/a/c;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lokhttp3/internal/a/c;

    .prologue
    .line 164
    iget-object v0, p0, Lokhttp3/c$1;->a:Lokhttp3/c;

    invoke-static {v0, p1}, Lokhttp3/c;->a(Lokhttp3/c;Lokhttp3/internal/a/c;)V

    .line 165
    return-void
.end method

.method public b(Lokhttp3/aa;)V
    .locals 1
    .param p1, "request"    # Lokhttp3/aa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lokhttp3/c$1;->a:Lokhttp3/c;

    invoke-static {v0, p1}, Lokhttp3/c;->a(Lokhttp3/c;Lokhttp3/aa;)V

    .line 153
    return-void
.end method
