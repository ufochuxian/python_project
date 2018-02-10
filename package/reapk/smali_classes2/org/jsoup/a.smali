.class public Lorg/jsoup/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/c/b;)Ljava/lang/String;
    .locals 4
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "whitelist"    # Lorg/jsoup/c/b;

    .prologue
    .line 198
    invoke-static {p0, p1}, Lorg/jsoup/a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 199
    .local v2, "dirty":Lorg/jsoup/nodes/Document;
    new-instance v1, Lorg/jsoup/c/a;

    invoke-direct {v1, p2}, Lorg/jsoup/c/a;-><init>(Lorg/jsoup/c/b;)V

    .line 200
    .local v1, "cleaner":Lorg/jsoup/c/a;
    invoke-virtual {v1, v2}, Lorg/jsoup/c/a;->a(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 201
    .local v0, "clean":Lorg/jsoup/nodes/Document;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/f;->L()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/c/b;Lorg/jsoup/nodes/Document$a;)Ljava/lang/String;
    .locals 4
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "whitelist"    # Lorg/jsoup/c/b;
    .param p3, "outputSettings"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 231
    invoke-static {p0, p1}, Lorg/jsoup/a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 232
    .local v2, "dirty":Lorg/jsoup/nodes/Document;
    new-instance v1, Lorg/jsoup/c/a;

    invoke-direct {v1, p2}, Lorg/jsoup/c/a;-><init>(Lorg/jsoup/c/b;)V

    .line 233
    .local v1, "cleaner":Lorg/jsoup/c/a;
    invoke-virtual {v1, v2}, Lorg/jsoup/c/a;->a(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 234
    .local v0, "clean":Lorg/jsoup/nodes/Document;
    invoke-virtual {v0, p3}, Lorg/jsoup/nodes/Document;->a(Lorg/jsoup/nodes/Document$a;)Lorg/jsoup/nodes/Document;

    .line 235
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->d()Lorg/jsoup/nodes/f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/f;->L()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static a(Ljava/lang/String;Lorg/jsoup/c/b;)Ljava/lang/String;
    .locals 1
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "whitelist"    # Lorg/jsoup/c/b;

    .prologue
    .line 215
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lorg/jsoup/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/c/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jsoup/helper/a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lorg/jsoup/helper/a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p0, p1, p2}, Lorg/jsoup/helper/a;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/f;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/b/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/a;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/f;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/jsoup/b/f;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lorg/jsoup/b/f;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/f;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/jsoup/b/f;

    .prologue
    .line 45
    invoke-virtual {p2, p0, p1}, Lorg/jsoup/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/net/URL;I)Lorg/jsoup/nodes/Document;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p0}, Lorg/jsoup/helper/b;->b(Ljava/net/URL;)Lorg/jsoup/Connection;

    move-result-object v0

    .line 182
    .local v0, "con":Lorg/jsoup/Connection;
    invoke-interface {v0, p1}, Lorg/jsoup/Connection;->a(I)Lorg/jsoup/Connection;

    .line 183
    invoke-interface {v0}, Lorg/jsoup/Connection;->a()Lorg/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static b(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0}, Lorg/jsoup/helper/b;->d(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p0, p1}, Lorg/jsoup/b/f;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lorg/jsoup/c/b;)Z
    .locals 3
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "whitelist"    # Lorg/jsoup/c/b;

    .prologue
    .line 247
    const-string v2, ""

    invoke-static {p0, v2}, Lorg/jsoup/a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 248
    .local v1, "dirty":Lorg/jsoup/nodes/Document;
    new-instance v0, Lorg/jsoup/c/a;

    invoke-direct {v0, p1}, Lorg/jsoup/c/a;-><init>(Lorg/jsoup/c/b;)V

    .line 249
    .local v0, "cleaner":Lorg/jsoup/c/a;
    invoke-virtual {v0, v1}, Lorg/jsoup/c/a;->b(Lorg/jsoup/nodes/Document;)Z

    move-result v2

    return v2
.end method

.method public static c(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "bodyHtml"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/jsoup/b/f;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method
