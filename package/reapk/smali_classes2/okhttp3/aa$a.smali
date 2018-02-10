.class public Lokhttp3/aa$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lokhttp3/u;

.field private b:Ljava/lang/String;

.field private c:Lokhttp3/t$a;

.field private d:Lokhttp3/ab;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "GET"

    iput-object v0, p0, Lokhttp3/aa$a;->b:Ljava/lang/String;

    .line 107
    new-instance v0, Lokhttp3/t$a;

    invoke-direct {v0}, Lokhttp3/t$a;-><init>()V

    iput-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/t$a;

    .line 108
    return-void
.end method

.method private constructor <init>(Lokhttp3/aa;)V
    .locals 1
    .param p1, "request"    # Lokhttp3/aa;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Lokhttp3/aa;->a(Lokhttp3/aa;)Lokhttp3/u;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->a:Lokhttp3/u;

    .line 112
    invoke-static {p1}, Lokhttp3/aa;->b(Lokhttp3/aa;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->b:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lokhttp3/aa;->c(Lokhttp3/aa;)Lokhttp3/ab;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->d:Lokhttp3/ab;

    .line 114
    invoke-static {p1}, Lokhttp3/aa;->d(Lokhttp3/aa;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->e:Ljava/lang/Object;

    .line 115
    invoke-static {p1}, Lokhttp3/aa;->e(Lokhttp3/aa;)Lokhttp3/t;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/t;->c()Lokhttp3/t$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/t$a;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/aa;Lokhttp3/aa$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/aa;
    .param p2, "x1"    # Lokhttp3/aa$1;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lokhttp3/aa$a;-><init>(Lokhttp3/aa;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/aa$a;)Lokhttp3/u;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa$a;

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/aa$a;->a:Lokhttp3/u;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/aa$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa$a;

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/aa$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/aa$a;)Lokhttp3/t$a;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa$a;

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/t$a;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/aa$a;)Lokhttp3/ab;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa$a;

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/aa$a;->d:Lokhttp3/ab;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/aa$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa$a;

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/aa$a;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/aa$a;
    .locals 2

    .prologue
    .line 202
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lokhttp3/aa$a;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 248
    iput-object p1, p0, Lokhttp3/aa$a;->e:Ljava/lang/Object;

    .line 249
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lokhttp3/aa$a;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_1
    :goto_0
    invoke-static {p1}, Lokhttp3/u;->g(Ljava/lang/String;)Lokhttp3/u;

    move-result-object v6

    .line 141
    .local v6, "parsed":Lokhttp3/u;
    if-nez v6, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    .end local v6    # "parsed":Lokhttp3/u;
    :cond_2
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 142
    .restart local v6    # "parsed":Lokhttp3/u;
    :cond_3
    invoke-virtual {p0, v6}, Lokhttp3/aa$a;->a(Lokhttp3/u;)Lokhttp3/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/t$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/t$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    .line 164
    return-object p0
.end method

.method public a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lokhttp3/ab;

    .prologue
    .line 230
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lokhttp3/internal/b/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lokhttp3/internal/b/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_3
    iput-object p1, p0, Lokhttp3/aa$a;->b:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lokhttp3/aa$a;->d:Lokhttp3/ab;

    .line 240
    return-object p0
.end method

.method public a(Ljava/net/URL;)Lokhttp3/aa$a;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 152
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "url == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    invoke-static {p1}, Lokhttp3/u;->a(Ljava/net/URL;)Lokhttp3/u;

    move-result-object v0

    .line 154
    .local v0, "parsed":Lokhttp3/u;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    invoke-virtual {p0, v0}, Lokhttp3/aa$a;->a(Lokhttp3/u;)Lokhttp3/aa$a;

    move-result-object v1

    return-object v1
.end method

.method public a(Lokhttp3/ab;)Lokhttp3/aa$a;
    .locals 1
    .param p1, "body"    # Lokhttp3/ab;

    .prologue
    .line 210
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/d;)Lokhttp3/aa$a;
    .locals 2
    .param p1, "cacheControl"    # Lokhttp3/d;

    .prologue
    .line 196
    invoke-virtual {p1}, Lokhttp3/d;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1}, Lokhttp3/aa$a;->b(Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v1

    .line 198
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Lokhttp3/t;)Lokhttp3/aa$a;
    .locals 1
    .param p1, "headers"    # Lokhttp3/t;

    .prologue
    .line 186
    invoke-virtual {p1}, Lokhttp3/t;->c()Lokhttp3/t$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/t$a;

    .line 187
    return-object p0
.end method

.method public a(Lokhttp3/u;)Lokhttp3/aa$a;
    .locals 2
    .param p1, "url"    # Lokhttp3/u;

    .prologue
    .line 119
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lokhttp3/aa$a;->a:Lokhttp3/u;

    .line 121
    return-object p0
.end method

.method public b()Lokhttp3/aa$a;
    .locals 2

    .prologue
    .line 206
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lokhttp3/aa$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/t$a;

    invoke-virtual {v0, p1}, Lokhttp3/t$a;->c(Ljava/lang/String;)Lokhttp3/t$a;

    .line 181
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lokhttp3/aa$a;->c:Lokhttp3/t$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/t$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    .line 176
    return-object p0
.end method

.method public b(Lokhttp3/ab;)Lokhttp3/aa$a;
    .locals 1
    .param p1, "body"    # Lokhttp3/ab;

    .prologue
    .line 214
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lokhttp3/aa$a;
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lokhttp3/ab;->create(Lokhttp3/w;[B)Lokhttp3/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/aa$a;->b(Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lokhttp3/ab;)Lokhttp3/aa$a;
    .locals 1
    .param p1, "body"    # Lokhttp3/ab;

    .prologue
    .line 222
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lokhttp3/ab;)Lokhttp3/aa$a;
    .locals 1
    .param p1, "body"    # Lokhttp3/ab;

    .prologue
    .line 226
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lokhttp3/aa;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lokhttp3/aa$a;->a:Lokhttp3/u;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    new-instance v0, Lokhttp3/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/aa;-><init>(Lokhttp3/aa$a;Lokhttp3/aa$1;)V

    return-object v0
.end method
