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
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/network/g$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/network/g$1;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/v$a;)Lokhttp3/ac;
    .locals 11
    .param p1, "chain"    # Lokhttp3/v$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-interface {p1}, Lokhttp3/v$a;->a()Lokhttp3/aa;

    move-result-object v5

    .line 234
    .local v5, "request":Lokhttp3/aa;
    invoke-interface {p1, v5}, Lokhttp3/v$a;->a(Lokhttp3/aa;)Lokhttp3/ac;

    move-result-object v6

    .line 236
    .local v6, "response":Lokhttp3/ac;
    const/4 v8, 0x0

    .line 237
    .local v8, "tryCount":I
    :goto_0
    invoke-virtual {v6}, Lokhttp3/ac;->d()Z

    move-result v9

    if-nez v9, :cond_0

    if-gez v8, :cond_0

    .line 241
    add-int/lit8 v8, v8, 0x1

    .line 244
    invoke-interface {p1, v5}, Lokhttp3/v$a;->a(Lokhttp3/aa;)Lokhttp3/ac;

    move-result-object v6

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v5}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/u;->l()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "path":Ljava/lang/String;
    const-string v9, "result"

    invoke-virtual {v6, v9}, Lokhttp3/ac;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "result":Ljava/lang/String;
    const-string v9, "/api/lessons"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "/api/lesson/roadmap"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_1
    const/4 v3, 0x1

    .line 251
    .local v3, "forcedCheck":Z
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v3, :cond_4

    .line 252
    :cond_2
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/network/Digest;->getCheckSum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "checkSum":Ljava/lang/String;
    invoke-virtual {v6}, Lokhttp3/ac;->h()Lokhttp3/ad;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ad;->string()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "body":Ljava/lang/String;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/Digest;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "digest":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 256
    :cond_3
    const-string v0, "{\"msg\":\"\u9a8c\u8bc1\u5931\u8d25\",\"code\":1000}"

    .line 257
    invoke-virtual {v6}, Lokhttp3/ac;->i()Lokhttp3/ac$a;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Lokhttp3/ac$a;->a(I)Lokhttp3/ac$a;

    move-result-object v9

    const-string v10, "application/json"

    .line 258
    invoke-static {v10}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v10

    invoke-static {v10, v0}, Lokhttp3/ad;->create(Lokhttp3/w;Ljava/lang/String;)Lokhttp3/ad;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokhttp3/ac$a;->a(Lokhttp3/ad;)Lokhttp3/ac$a;

    move-result-object v9

    .line 259
    invoke-virtual {v9}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v6

    .line 267
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "checkSum":Ljava/lang/String;
    .end local v2    # "digest":Ljava/lang/String;
    .end local v6    # "response":Lokhttp3/ac;
    :cond_4
    :goto_2
    return-object v6

    .line 249
    .end local v3    # "forcedCheck":Z
    .restart local v6    # "response":Lokhttp3/ac;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 261
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v1    # "checkSum":Ljava/lang/String;
    .restart local v2    # "digest":Ljava/lang/String;
    .restart local v3    # "forcedCheck":Z
    :cond_6
    invoke-virtual {v6}, Lokhttp3/ac;->i()Lokhttp3/ac$a;

    move-result-object v9

    const-string v10, "application/json"

    .line 262
    invoke-static {v10}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v10

    invoke-static {v10, v0}, Lokhttp3/ad;->create(Lokhttp3/w;Ljava/lang/String;)Lokhttp3/ad;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokhttp3/ac$a;->a(Lokhttp3/ad;)Lokhttp3/ac$a;

    move-result-object v9

    .line 263
    invoke-virtual {v9}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v6

    goto :goto_2
.end method
