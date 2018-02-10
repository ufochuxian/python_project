.class final Lcom/jiliguala/niuwa/common/util/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 298
    const/4 v2, 0x0

    .line 300
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 301
    .local v0, "appRootCacheDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/.nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v4, "noMediaFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 304
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_1
    const-string v5, ".nomedia"

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 312
    .end local v0    # "appRootCacheDir":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v4    # "noMediaFile":Ljava/io/File;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_0

    .line 309
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 307
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "appRootCacheDir":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "noMediaFile":Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_1
.end method
