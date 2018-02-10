.class Lcom/jiliguala/niuwa/logic/downloader/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/downloader/c/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/downloader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x200000


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

.field private c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

.field private d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/logic/downloader/a/b;Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;Lcom/jiliguala/niuwa/logic/downloader/c/b;)V
    .locals 3
    .param p2, "info"    # Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    .param p3, "listener"    # Lcom/jiliguala/niuwa/logic/downloader/c/b;

    .prologue
    const/4 v2, 0x1

    .line 163
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->k:Z

    .line 164
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    .line 165
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    .line 166
    iget v0, p2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->progress:I

    iput v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->e:I

    .line 167
    iget v0, p2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->length:I

    iput v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    .line 169
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v0

    iget-object v1, p2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v0

    iget-object v1, p2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a(Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v0

    iget-object v1, p2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->l:Ljava/util/List;

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->l:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->h:Z

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v0

    iget-object v1, p2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/downloader/a/b;Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;Lcom/jiliguala/niuwa/logic/downloader/c/b;Lcom/jiliguala/niuwa/logic/downloader/a/b$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/downloader/a/b;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    .param p3, "x2"    # Lcom/jiliguala/niuwa/logic/downloader/c/b;
    .param p4, "x3"    # Lcom/jiliguala/niuwa/logic/downloader/a/b$1;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;-><init>(Lcom/jiliguala/niuwa/logic/downloader/a/b;Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;Lcom/jiliguala/niuwa/logic/downloader/c/b;)V

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/downloader/a/b$b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/downloader/a/b$b;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/downloader/a/b$b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/downloader/a/b$b;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->i:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    iget v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->e:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->e:I

    .line 272
    iget v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->e:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 273
    .local v0, "tmp":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->g:I

    if-eq v0, v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(I)V

    .line 275
    iput v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->g:I

    .line 277
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    iget v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->e:I

    if-ne v1, v2, :cond_1

    .line 278
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 283
    :cond_1
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->i:Z

    if-eqz v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->e:I

    iput v2, v1, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->progress:I

    .line 285
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b(Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;)V

    .line 286
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_2
    monitor-exit p0

    .line 289
    return-void

    .line 288
    .end local v0    # "tmp":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isStop"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->i:Z

    .line 184
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b(Lcom/jiliguala/niuwa/logic/downloader/a/b;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->a(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    if-eqz v5, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    const/4 v6, 0x0

    const-string v7, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v5, v6, v7}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(ILjava/lang/String;)Z

    .line 191
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->k:Z

    .line 196
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->k:Z

    if-eqz v5, :cond_9

    .line 197
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a()Ljava/util/Hashtable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v5, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->h:Z

    if-eqz v5, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    .line 200
    .local v20, "i":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a(Lcom/jiliguala/niuwa/logic/downloader/a/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v7, v0, v1, v2}, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;-><init>(Lcom/jiliguala/niuwa/logic/downloader/a/b$b;Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;Lcom/jiliguala/niuwa/logic/downloader/c/c;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 192
    .end local v20    # "i":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b(Lcom/jiliguala/niuwa/logic/downloader/a/b;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->a(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    if-eqz v5, :cond_1

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    const/4 v6, 0x5

    const-string v7, "\u6b63\u5728\u4f7f\u7528\u975eWIFI\u7f51\u7edc\u4e0b\u8f7d"

    invoke-virtual {v5, v6, v7}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(ILjava/lang/String;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->k:Z

    goto :goto_0

    .line 203
    :cond_3
    const/16 v18, 0x0

    .line 205
    .local v18, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->realUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v18

    .line 206
    const-string v5, "Range"

    const-string v6, "bytes=0-2147483647"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xce

    if-ne v5, v6, :cond_7

    .line 208
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    .line 209
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    int-to-long v12, v5

    cmp-long v5, v6, v12

    if-nez v5, :cond_4

    .line 210
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->j:Z

    .line 211
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a()Ljava/util/Hashtable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    if-eqz v5, :cond_4

    .line 213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5, v6, v7}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 215
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->j:Z

    if-nez v5, :cond_8

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    iput v6, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->length:I

    .line 217
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a(Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;)V

    .line 219
    const/high16 v21, 0x200000

    .line 220
    .local v21, "length":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    const/high16 v6, 0x200000

    if-gt v5, v6, :cond_6

    .line 221
    const/16 v23, 0x3

    .line 222
    .local v23, "threadSize":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    div-int v21, v5, v23

    .line 226
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    rem-int v22, v5, v21

    .line 227
    .local v22, "remainder":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 228
    mul-int v8, v20, v21

    .line 229
    .local v8, "start":I
    add-int v5, v8, v21

    add-int/lit8 v9, v5, -0x1

    .line 230
    .local v9, "end":I
    add-int/lit8 v5, v23, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_5

    .line 231
    add-int v5, v8, v21

    add-int v9, v5, v22

    .line 233
    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "id":Ljava/lang/String;
    new-instance v4, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->realUrl:Ljava/lang/String;

    invoke-direct/range {v4 .. v10}, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 236
    .local v4, "ti":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a(Lcom/jiliguala/niuwa/logic/downloader/a/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v4, v1}, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;-><init>(Lcom/jiliguala/niuwa/logic/downloader/a/b$b;Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;Lcom/jiliguala/niuwa/logic/downloader/c/c;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 227
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 224
    .end local v4    # "ti":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v10    # "id":Ljava/lang/String;
    .end local v20    # "i":I
    .end local v22    # "remainder":I
    .end local v23    # "threadSize":I
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    const/high16 v6, 0x200000

    div-int v23, v5, v6

    .restart local v23    # "threadSize":I
    goto :goto_2

    .line 239
    .end local v21    # "length":I
    .end local v23    # "threadSize":I
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_8

    .line 240
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    .line 241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    int-to-long v12, v5

    cmp-long v5, v6, v12

    if-nez v5, :cond_a

    .line 242
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a()Ljava/util/Hashtable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    if-eqz v5, :cond_8

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5, v6, v7}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_8
    :goto_4
    if-eqz v18, :cond_9

    .line 261
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 266
    .end local v18    # "conn":Ljava/net/HttpURLConnection;
    :cond_9
    :goto_5
    return-void

    .line 246
    .restart local v18    # "conn":Ljava/net/HttpURLConnection;
    :cond_a
    :try_start_1
    new-instance v4, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v12, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v13, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v14, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->realUrl:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->f:I

    move/from16 v16, v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    .line 247
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 248
    .restart local v4    # "ti":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->a:Lcom/jiliguala/niuwa/logic/downloader/a/b;

    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a(Lcom/jiliguala/niuwa/logic/downloader/a/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v4, v1}, Lcom/jiliguala/niuwa/logic/downloader/a/b$b$a;-><init>(Lcom/jiliguala/niuwa/logic/downloader/a/b$b;Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;Lcom/jiliguala/niuwa/logic/downloader/c/c;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 251
    .end local v4    # "ti":Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    :catch_0
    move-exception v19

    .line 252
    .local v19, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 253
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->e:I

    iput v6, v5, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->progress:I

    .line 254
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->b()Lcom/jiliguala/niuwa/logic/downloader/a/a;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b(Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;)V

    .line 255
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/a/b;->a()Ljava/util/Hashtable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->c:Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    if-eqz v5, :cond_c

    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/downloader/a/b$b;->d:Lcom/jiliguala/niuwa/logic/downloader/c/b;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :cond_c
    if-eqz v18, :cond_9

    .line 261
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 260
    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v18, :cond_d

    .line 261
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v5
.end method
