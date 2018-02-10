.class Lcom/squareup/okhttp/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/c;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/c;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/squareup/okhttp/c$1;->a:Lcom/squareup/okhttp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/b;
    .locals 1
    .param p1, "response"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/squareup/okhttp/c$1;->a:Lcom/squareup/okhttp/c;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x;
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/squareup/okhttp/c$1;->a:Lcom/squareup/okhttp/c;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/squareup/okhttp/c$1;->a:Lcom/squareup/okhttp/c;

    invoke-static {v0}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/c;)V

    .line 152
    return-void
.end method

.method public a(Lcom/squareup/okhttp/internal/a/c;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lcom/squareup/okhttp/internal/a/c;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/squareup/okhttp/c$1;->a:Lcom/squareup/okhttp/c;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/internal/a/c;)V

    .line 155
    return-void
.end method

.method public a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/x;)V
    .locals 1
    .param p1, "cached"    # Lcom/squareup/okhttp/x;
    .param p2, "network"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/squareup/okhttp/c$1;->a:Lcom/squareup/okhttp/c;

    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/x;)V

    .line 149
    return-void
.end method

.method public b(Lcom/squareup/okhttp/v;)V
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/squareup/okhttp/c$1;->a:Lcom/squareup/okhttp/c;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/v;)V

    .line 146
    return-void
.end method
