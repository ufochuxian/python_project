.class public Lcom/mob/tools/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/a/g;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    :try_start_0
    const-string v1, "org.apache.http.HttpResponse"

    invoke-static {v1}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    const-string v1, "org.apache.http.Header"

    invoke-static {v1}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 21
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 22
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "httpResponse"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mob/tools/a/h;->a:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public a()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/a/h;->a:Ljava/lang/Object;

    const-string v3, "getStatusLine"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "line":Ljava/lang/Object;
    const-string v2, "getStatusCode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 34
    .end local v0    # "line":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 35
    .local v1, "t":Ljava/lang/Throwable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 36
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public b()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/a/h;->a:Ljava/lang/Object;

    const-string v3, "getEntity"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "entity":Ljava/lang/Object;
    const-string v2, "getContent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 47
    .end local v0    # "entity":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "t":Ljava/lang/Throwable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 49
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public c()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/mob/tools/a/h;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v8, p0, Lcom/mob/tools/a/h;->a:Ljava/lang/Object;

    const-string v10, "getAllHeaders"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "allHeaders":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 65
    const-string v8, "length"

    invoke-static {v0, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-array v2, v8, [Ljava/lang/Object;

    .line 66
    .local v2, "headers":[Ljava/lang/Object;
    const/4 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v0, v8, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    array-length v10, v2

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v1, v2, v8

    .line 68
    .local v1, "h":Ljava/lang/Object;
    const-string v9, "getName"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v9, v11}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, "name":Ljava/lang/String;
    const-string v9, "getValue"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v9, v11}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 70
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, ""

    .line 71
    :cond_0
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "values":[Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "allHeaders":Ljava/lang/Object;
    .end local v1    # "h":Ljava/lang/Object;
    .end local v2    # "headers":[Ljava/lang/Object;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 77
    .local v5, "t":Ljava/lang/Throwable;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x9

    if-ge v8, v9, :cond_1

    .line 78
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 80
    :cond_1
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 75
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v0    # "allHeaders":Ljava/lang/Object;
    :cond_2
    return-object v3
.end method
