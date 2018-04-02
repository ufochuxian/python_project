.class Lcom/jiliguala/niuwa/logic/downloader/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/downloader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/jiliguala/niuwa/logic/downloader/c/b;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/logic/downloader/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/downloader/c/b;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "dirPath"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/jiliguala/niuwa/logic/downloader/c/b;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->b:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->c:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/downloader/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/downloader/c/b;Lcom/jiliguala/niuwa/logic/downloader/a/b$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/downloader/a/b;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/jiliguala/niuwa/logic/downloader/c/b;
    .param p5, "x4"    # Lcom/jiliguala/niuwa/logic/downloader/a/b$1;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;-><init>(Lcom/jiliguala/niuwa/logic/downloader/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/downloader/c/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 114
    const/4 v6, 0x0

    .line 116
    .local v6, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->b:Ljava/lang/String;

    .line 117
    .local v3, "realUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 119
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->REFERER:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_1

    .line 121
    :cond_0
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->LOCATION:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    :goto_0
    if-eqz v6, :cond_2

    .line 142
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 145
    .end local v3    # "realUrl":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 127
    .restart local v3    # "realUrl":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    move-result-object v0

    .line 128
    .local v0, "info":Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/downloader/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 129
    .local v9, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    if-eqz v1, :cond_4

    .line 130
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    invoke-virtual {v1, v9, v3}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_4
    new-instance v8, Ljava/io/File;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->c:Ljava/lang/String;

    invoke-direct {v8, v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v8, "file":Ljava/io/File;
    if-eqz v0, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 133
    :cond_5
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    .end local v0    # "info":Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->c:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/jiliguala/niuwa/logic/downloader/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V

    .line 135
    .restart local v0    # "info":Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    :cond_6
    new-instance v10, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    const/4 v4, 0x0

    invoke-direct {v10, v1, v0, v2, v4}, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;-><init>(Lcom/jiliguala/niuwa/logic/downloader/a/b;Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;Lcom/jiliguala/niuwa/logic/downloader/c/b;Lcom/jiliguala/niuwa/logic/downloader/a/b$1;)V

    .line 136
    .local v10, "task":Lcom/jiliguala/niuwa/logic/downloader/a/b$b;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a(Lcom/jiliguala/niuwa/logic/downloader/a/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    .end local v0    # "info":Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    .end local v3    # "realUrl":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "task":Lcom/jiliguala/niuwa/logic/downloader/a/b$b;
    :catch_0
    move-exception v7

    .line 139
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    if-eqz v6, :cond_2

    .line 142
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 141
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 142
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 144
    :cond_7
    throw v1
.end method
