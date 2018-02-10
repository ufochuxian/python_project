.class public Lcom/jiliguala/niuwa/logic/download/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/download/b$c;,
        Lcom/jiliguala/niuwa/logic/download/b$b;,
        Lcom/jiliguala/niuwa/logic/download/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I = 0xa00000

.field private static final c:I = 0x0

.field private static final d:Ljava/lang/String; = "down_http"

.field private static final e:Ljava/lang/String; = "down_cache"

.field private static final f:I = 0x64

.field private static final g:I = 0xa

.field private static final h:I = 0x2000

.field private static i:Lcom/jiliguala/niuwa/logic/download/b;


# instance fields
.field private j:Lcom/jiliguala/niuwa/logic/image/a;

.field private k:[B

.field private l:Lcom/jiliguala/niuwa/logic/download/b$b;

.field private m:Z

.field private n:Lcom/jiliguala/niuwa/logic/download/b$c;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/download/c;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/download/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/jiliguala/niuwa/logic/download/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/download/b;->a:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/jiliguala/niuwa/logic/download/b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/download/b;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/download/b;->i:Lcom/jiliguala/niuwa/logic/download/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->k:[B

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->p:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/jiliguala/niuwa/logic/download/b$c;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/download/b$c;-><init>(Lcom/jiliguala/niuwa/logic/download/b;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->n:Lcom/jiliguala/niuwa/logic/download/b$c;

    .line 55
    new-instance v0, Lcom/jiliguala/niuwa/logic/download/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/logic/download/b$b;-><init>(Lcom/jiliguala/niuwa/logic/download/b;Lcom/jiliguala/niuwa/logic/download/b$1;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->l:Lcom/jiliguala/niuwa/logic/download/b$b;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->o:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->l:Lcom/jiliguala/niuwa/logic/download/b$b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/download/b$b;->start()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->m:Z

    .line 59
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/download/b;
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/jiliguala/niuwa/logic/download/b;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/download/b;->i:Lcom/jiliguala/niuwa/logic/download/b;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/jiliguala/niuwa/logic/download/b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/download/b;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/download/b;->i:Lcom/jiliguala/niuwa/logic/download/b;

    .line 66
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/download/b;->i:Lcom/jiliguala/niuwa/logic/download/b;

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/download/b;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/download/b;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->o:Ljava/util/List;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .param p1, "downloadState"    # I

    .prologue
    .line 126
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/b;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/download/b$a;

    .line 127
    .local v0, "listener":Lcom/jiliguala/niuwa/logic/download/b$a;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-interface {v0}, Lcom/jiliguala/niuwa/logic/download/b$a;->a()V

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-interface {v0}, Lcom/jiliguala/niuwa/logic/download/b$a;->b()V

    goto :goto_0

    .line 136
    .end local v0    # "listener":Lcom/jiliguala/niuwa/logic/download/b$a;
    :cond_0
    return-void

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/download/b;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/download/b;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/download/b;->a(I)V

    return-void
.end method

.method private a(Lcom/jiliguala/niuwa/logic/download/c;)V
    .locals 1
    .param p1, "task"    # Lcom/jiliguala/niuwa/logic/download/c;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->n:Lcom/jiliguala/niuwa/logic/download/b$c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/download/b$c;->a(Lcom/jiliguala/niuwa/logic/download/c;)V

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->l:Lcom/jiliguala/niuwa/logic/download/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->l:Lcom/jiliguala/niuwa/logic/download/b$b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/download/b$b;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->m:Z

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->l:Lcom/jiliguala/niuwa/logic/download/b$b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/download/b$b;->start()V

    .line 184
    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/download/b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/download/b;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/logic/download/b;)Lcom/jiliguala/niuwa/logic/download/b$c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/download/b;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->n:Lcom/jiliguala/niuwa/logic/download/b$c;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/download/b;->d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/download/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/download/b;->a(Lcom/jiliguala/niuwa/logic/download/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/download/c;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v3, Lcom/jiliguala/niuwa/logic/download/b$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/logic/download/b$1;-><init>(Lcom/jiliguala/niuwa/logic/download/b;)V

    .line 211
    .local v3, "taskListener":Lcom/jiliguala/niuwa/logic/download/a;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "down_http"

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/logic/download/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 212
    .local v0, "diskCacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 217
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Lcom/jiliguala/niuwa/logic/download/c;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p1, v2, v3}, Lcom/jiliguala/niuwa/logic/download/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/download/a;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "diskCacheDir":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 222
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .line 298
    .local v0, "abPath":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/download/b;->k:[B

    monitor-enter v6

    .line 299
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/download/b;->j:Lcom/jiliguala/niuwa/logic/image/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_1

    .line 300
    const/4 v2, 0x0

    .line 302
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/download/b;->j:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v5, v3}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$c;

    move-result-object v4

    .line 303
    .local v4, "snapshot":Lcom/jiliguala/niuwa/logic/image/a$c;
    if-eqz v4, :cond_1

    .line 304
    sget-boolean v5, Lcom/jiliguala/niuwa/common/util/b/a;->d:Z

    if-eqz v5, :cond_0

    .line 307
    :cond_0
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/image/a$c;->b()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 308
    :try_start_2
    monitor-exit v6

    move-object v1, v0

    .line 336
    .end local v0    # "abPath":Ljava/lang/String;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "snapshot":Lcom/jiliguala/niuwa/logic/image/a$c;
    .local v1, "abPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 327
    .end local v1    # "abPath":Ljava/lang/String;
    .restart local v0    # "abPath":Ljava/lang/String;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    throw v5

    .line 337
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 325
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 336
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v0

    .end local v0    # "abPath":Ljava/lang/String;
    .restart local v1    # "abPath":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/download/b$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/niuwa/logic/download/b$a;

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/download/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "abPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 276
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/logic/download/b;->a(I)V

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/download/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/io/File;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 226
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/download/b;->k:[B

    monitor-enter v8

    .line 227
    :try_start_0
    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/download/b;->j:Lcom/jiliguala/niuwa/logic/image/a;

    if-eqz v7, :cond_0

    .line 228
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 229
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .line 231
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/download/b;->j:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v7, v4}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$c;

    move-result-object v6

    .line 232
    .local v6, "snapshot":Lcom/jiliguala/niuwa/logic/image/a$c;
    if-nez v6, :cond_3

    .line 233
    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/download/b;->j:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v7, v4}, Lcom/jiliguala/niuwa/logic/image/a;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v3

    .line 234
    .local v3, "editor":Lcom/jiliguala/niuwa/logic/image/a$a;
    if-eqz v3, :cond_2

    .line 235
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/jiliguala/niuwa/logic/image/a$a;->c(I)Ljava/io/OutputStream;

    move-result-object v5

    .line 236
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x2000

    invoke-direct {v1, v7, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 237
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x2000

    invoke-direct {v2, v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 240
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    .line 241
    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    .end local v0    # "b":I
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "editor":Lcom/jiliguala/niuwa/logic/image/a$a;
    .end local v6    # "snapshot":Lcom/jiliguala/niuwa/logic/image/a$c;
    :catch_0
    move-exception v7

    .line 261
    if-eqz v5, :cond_0

    .line 262
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    return-void

    .line 243
    .restart local v0    # "b":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "editor":Lcom/jiliguala/niuwa/logic/image/a$a;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "snapshot":Lcom/jiliguala/niuwa/logic/image/a$c;
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 244
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 249
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/image/a$a;->a()V

    .line 250
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    .end local v0    # "b":I
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "editor":Lcom/jiliguala/niuwa/logic/image/a$a;
    :cond_2
    :goto_2
    if-eqz v5, :cond_0

    .line 262
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 264
    :catch_1
    move-exception v7

    goto :goto_1

    .line 253
    :cond_3
    const/4 v7, 0x0

    :try_start_6
    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/image/a$c;->a(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 257
    .end local v6    # "snapshot":Lcom/jiliguala/niuwa/logic/image/a$c;
    :catch_2
    move-exception v7

    .line 261
    if-eqz v5, :cond_0

    .line 262
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 264
    :catch_3
    move-exception v7

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v7

    .line 261
    if-eqz v5, :cond_4

    .line 262
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 265
    :cond_4
    :goto_3
    :try_start_9
    throw v7

    .line 268
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v7

    .line 264
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v9

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 290
    :cond_0
    :goto_0
    return-object v0

    .line 286
    :cond_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/download/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "abPath":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 290
    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v6, 0xa00000

    .line 140
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/download/b;->k:[B

    monitor-enter v2

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/b;->j:Lcom/jiliguala/niuwa/logic/image/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/b;->j:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/image/a;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    :cond_0
    const-string v1, "down_cache"

    invoke-static {p1, v1}, Lcom/jiliguala/niuwa/logic/download/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 143
    .local v0, "diskCacheDir":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 147
    :cond_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->b(Ljava/io/File;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 149
    const/4 v1, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xa00000

    :try_start_1
    invoke-static {v0, v1, v3, v4, v5}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/File;IIJ)Lcom/jiliguala/niuwa/logic/image/a;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/download/b;->j:Lcom/jiliguala/niuwa/logic/image/a;

    .line 150
    sget-boolean v1, Lcom/jiliguala/niuwa/common/util/b/a;->d:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 159
    .end local v0    # "diskCacheDir":Ljava/io/File;
    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/download/b;->k:[B

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 160
    monitor-exit v2

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 153
    .restart local v0    # "diskCacheDir":Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Lcom/jiliguala/niuwa/logic/download/b$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/niuwa/logic/download/b$a;

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->m:Z

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/download/b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    return-void
.end method
