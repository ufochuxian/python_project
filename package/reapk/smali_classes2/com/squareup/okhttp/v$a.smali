.class public Lcom/squareup/okhttp/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/URL;

.field private c:Ljava/lang/String;

.field private d:Lcom/squareup/okhttp/p$a;

.field private e:Lcom/squareup/okhttp/w;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "GET"

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->c:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/squareup/okhttp/p$a;

    invoke-direct {v0}, Lcom/squareup/okhttp/p$a;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->d:Lcom/squareup/okhttp/p$a;

    .line 136
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/v;)V
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Lcom/squareup/okhttp/v;->a(Lcom/squareup/okhttp/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->a:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lcom/squareup/okhttp/v;->b(Lcom/squareup/okhttp/v;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->b:Ljava/net/URL;

    .line 141
    invoke-static {p1}, Lcom/squareup/okhttp/v;->c(Lcom/squareup/okhttp/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->c:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/squareup/okhttp/v;->d(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/w;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->e:Lcom/squareup/okhttp/w;

    .line 143
    invoke-static {p1}, Lcom/squareup/okhttp/v;->e(Lcom/squareup/okhttp/v;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->f:Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Lcom/squareup/okhttp/v;->f(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/p;->c()Lcom/squareup/okhttp/p$a;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->d:Lcom/squareup/okhttp/p$a;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/v$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/v;
    .param p2, "x1"    # Lcom/squareup/okhttp/v$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/v$a;-><init>(Lcom/squareup/okhttp/v;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/v$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v$a;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/v$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/v$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v$a;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/v$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/v$a;)Lcom/squareup/okhttp/p$a;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v$a;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/v$a;->d:Lcom/squareup/okhttp/p$a;

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/v$a;)Lcom/squareup/okhttp/w;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v$a;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/v$a;->e:Lcom/squareup/okhttp/w;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/v$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v$a;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/v$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/v$a;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/v$a;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/v$a;->b:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/v$a;
    .locals 2

    .prologue
    .line 202
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/d;)Lcom/squareup/okhttp/v$a;
    .locals 2
    .param p1, "cacheControl"    # Lcom/squareup/okhttp/d;

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/squareup/okhttp/d;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    move-result-object v1

    .line 198
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/v$a;
    .locals 1
    .param p1, "headers"    # Lcom/squareup/okhttp/p;

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->c()Lcom/squareup/okhttp/p$a;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->d:Lcom/squareup/okhttp/p$a;

    .line 187
    return-object p0
.end method

.method public a(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;
    .locals 1
    .param p1, "body"    # Lcom/squareup/okhttp/w;

    .prologue
    .line 210
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/squareup/okhttp/v$a;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/squareup/okhttp/v$a;->f:Ljava/lang/Object;

    .line 251
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/v$a;->a:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->b:Ljava/net/URL;

    .line 151
    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/squareup/okhttp/w;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/squareup/okhttp/internal/a/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
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

    .line 236
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/squareup/okhttp/internal/a/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    const/4 v0, 0x0

    sget-object v1, Lcom/squareup/okhttp/internal/j;->a:[B

    invoke-static {v0, v1}, Lcom/squareup/okhttp/w;->a(Lcom/squareup/okhttp/r;[B)Lcom/squareup/okhttp/w;

    move-result-object p2

    .line 239
    :cond_3
    iput-object p1, p0, Lcom/squareup/okhttp/v$a;->c:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lcom/squareup/okhttp/v$a;->e:Lcom/squareup/okhttp/w;

    .line 241
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/squareup/okhttp/v$a;->d:Lcom/squareup/okhttp/p$a;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/p$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 167
    return-object p0
.end method

.method public a(Ljava/net/URL;)Lcom/squareup/okhttp/v$a;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 155
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/v$a;->b:Ljava/net/URL;

    .line 157
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/v$a;->a:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public b()Lcom/squareup/okhttp/v$a;
    .locals 2

    .prologue
    .line 206
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;
    .locals 1
    .param p1, "body"    # Lcom/squareup/okhttp/w;

    .prologue
    .line 214
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/squareup/okhttp/v$a;->d:Lcom/squareup/okhttp/p$a;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/p$a;->c(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 181
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/squareup/okhttp/v$a;->d:Lcom/squareup/okhttp/p$a;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 176
    return-object p0
.end method

.method public c()Lcom/squareup/okhttp/v$a;
    .locals 2

    .prologue
    .line 218
    const-string v0, "DELETE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;
    .locals 1
    .param p1, "body"    # Lcom/squareup/okhttp/w;

    .prologue
    .line 222
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;
    .locals 1
    .param p1, "body"    # Lcom/squareup/okhttp/w;

    .prologue
    .line 226
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/squareup/okhttp/v;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/squareup/okhttp/v$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/v;-><init>(Lcom/squareup/okhttp/v$a;Lcom/squareup/okhttp/v$1;)V

    return-object v0
.end method
