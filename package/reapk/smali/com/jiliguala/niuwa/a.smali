.class public Lcom/jiliguala/niuwa/a;
.super Lcom/github/moduth/blockcanary/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/github/moduth/blockcanary/b/a;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blockInfo"    # Lcom/github/moduth/blockcanary/b/a;

    .prologue
    .line 162
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 1
    .param p1, "zippedFile"    # Ljava/io/File;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a([Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p1, "src"    # [Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "unknown"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "uid"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "unknown"

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x3e8

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/a;->g()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "/blockcanary/"

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public m()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 144
    .local v0, "whiteList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v1, "org.chromium"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 145
    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method
