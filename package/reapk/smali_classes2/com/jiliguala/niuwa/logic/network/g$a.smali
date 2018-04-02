.class Lcom/jiliguala/niuwa/logic/network/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/network/g$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/network/g$1;

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/v$a;)Lokhttp3/ac;
    .locals 5
    .param p1, "chain"    # Lokhttp3/v$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-interface {p1}, Lokhttp3/v$a;->a()Lokhttp3/aa;

    move-result-object v1

    .line 206
    .local v1, "original":Lokhttp3/aa;
    invoke-virtual {v1}, Lokhttp3/aa;->f()Lokhttp3/aa$a;

    move-result-object v3

    .line 208
    .local v3, "requestBuilder":Lokhttp3/aa$a;
    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/network/g;->a(Lokhttp3/aa$a;)V

    .line 211
    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Lokhttp3/aa$a;Lokhttp3/aa;)V

    .line 214
    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b(Lokhttp3/aa$a;)V

    .line 217
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Lokhttp3/aa;)Lokhttp3/u$a;

    move-result-object v0

    .line 218
    .local v0, "httpUrlBuilder":Lokhttp3/u$a;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lokhttp3/u$a;->c()Lokhttp3/u;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/aa$a;->a(Lokhttp3/u;)Lokhttp3/aa$a;

    .line 223
    :cond_0
    invoke-virtual {v3}, Lokhttp3/aa$a;->d()Lokhttp3/aa;

    move-result-object v2

    .line 224
    .local v2, "request":Lokhttp3/aa;
    invoke-interface {p1, v2}, Lokhttp3/v$a;->a(Lokhttp3/aa;)Lokhttp3/ac;

    move-result-object v4

    return-object v4
.end method
