.class Lcom/jiliguala/niuwa/logic/network/g$b;
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
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/network/g$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/network/g$1;

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/v$a;)Lokhttp3/ac;
    .locals 4
    .param p1, "chain"    # Lokhttp3/v$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-interface {p1}, Lokhttp3/v$a;->a()Lokhttp3/aa;

    move-result-object v0

    .line 232
    .local v0, "request":Lokhttp3/aa;
    invoke-interface {p1, v0}, Lokhttp3/v$a;->a(Lokhttp3/aa;)Lokhttp3/ac;

    move-result-object v1

    .line 234
    .local v1, "response":Lokhttp3/ac;
    const/4 v2, 0x0

    .line 235
    .local v2, "tryCount":I
    :goto_0
    invoke-virtual {v1}, Lokhttp3/ac;->d()Z

    move-result v3

    if-nez v3, :cond_0

    if-gez v2, :cond_0

    .line 239
    add-int/lit8 v2, v2, 0x1

    .line 242
    invoke-interface {p1, v0}, Lokhttp3/v$a;->a(Lokhttp3/aa;)Lokhttp3/ac;

    move-result-object v1

    goto :goto_0

    .line 246
    :cond_0
    return-object v1
.end method
