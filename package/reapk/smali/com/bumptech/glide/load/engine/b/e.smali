.class public Lcom/bumptech/glide/load/engine/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/a;


# static fields
.field private static final a:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final b:I = 0x1

.field private static final c:I = 0x1

.field private static d:Lcom/bumptech/glide/load/engine/b/e;


# instance fields
.field private final e:Lcom/bumptech/glide/load/engine/b/c;

.field private final f:Lcom/bumptech/glide/load/engine/b/l;

.field private final g:Ljava/io/File;

.field private final h:I

.field private i:Lcom/bumptech/glide/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/e;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/engine/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/load/engine/b/c;

    .line 52
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/e;->g:Ljava/io/File;

    .line 53
    iput p2, p0, Lcom/bumptech/glide/load/engine/b/e;->h:I

    .line 54
    new-instance v0, Lcom/bumptech/glide/load/engine/b/l;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/l;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->f:Lcom/bumptech/glide/load/engine/b/l;

    .line 55
    return-void
.end method

.method public static declared-synchronized a(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/b/a;
    .locals 2
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # I

    .prologue
    .line 45
    const-class v1, Lcom/bumptech/glide/load/engine/b/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/e;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/bumptech/glide/load/engine/b/e;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/b/e;-><init>(Ljava/io/File;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/e;

    .line 48
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/engine/b/e;->d:Lcom/bumptech/glide/load/engine/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b()Lcom/bumptech/glide/a/a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->i:Lcom/bumptech/glide/a/a;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->g:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v3, p0, Lcom/bumptech/glide/load/engine/b/e;->h:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;IIJ)Lcom/bumptech/glide/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->i:Lcom/bumptech/glide/a/a;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->i:Lcom/bumptech/glide/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/e;->i:Lcom/bumptech/glide/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;)Ljava/io/File;
    .locals 6
    .param p1, "key"    # Lcom/bumptech/glide/load/b;

    .prologue
    .line 70
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b/e;->f:Lcom/bumptech/glide/load/engine/b/l;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/b/l;->a(Lcom/bumptech/glide/load/b;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "safeKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 76
    .local v1, "result":Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b/e;->b()Lcom/bumptech/glide/a/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/a/a;->a(Ljava/lang/String;)Lcom/bumptech/glide/a/a$c;

    move-result-object v3

    .line 77
    .local v3, "value":Lcom/bumptech/glide/a/a$c;
    if-eqz v3, :cond_0

    .line 78
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/a/a$c;->a(I)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    .end local v3    # "value":Lcom/bumptech/glide/a/a$c;
    :cond_0
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "DiskLruCacheWrapper"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    const-string v4, "DiskLruCacheWrapper"

    const-string v5, "Unable to get from disk cache"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b/e;->b()Lcom/bumptech/glide/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/a/a;->f()V

    .line 130
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b/e;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to clear disk cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/b/a$b;)V
    .locals 6
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .param p2, "writer"    # Lcom/bumptech/glide/load/engine/b/a$b;

    .prologue
    .line 90
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b/e;->f:Lcom/bumptech/glide/load/engine/b/l;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/b/l;->a(Lcom/bumptech/glide/load/b;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "safeKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/load/engine/b/c;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/b/c;->a(Lcom/bumptech/glide/load/b;)V

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b/e;->b()Lcom/bumptech/glide/a/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/a/a;->b(Ljava/lang/String;)Lcom/bumptech/glide/a/a$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 95
    .local v1, "editor":Lcom/bumptech/glide/a/a$a;
    if-eqz v1, :cond_1

    .line 97
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/a/a$a;->b(I)Ljava/io/File;

    move-result-object v2

    .line 98
    .local v2, "file":Ljava/io/File;
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/b/a$b;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/bumptech/glide/a/a$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/bumptech/glide/a/a$a;->c()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/load/engine/b/c;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/b/c;->b(Lcom/bumptech/glide/load/b;)V

    .line 112
    .end local v1    # "editor":Lcom/bumptech/glide/a/a$a;
    :goto_0
    return-void

    .line 102
    .restart local v1    # "editor":Lcom/bumptech/glide/a/a$a;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v1}, Lcom/bumptech/glide/a/a$a;->c()V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .end local v1    # "editor":Lcom/bumptech/glide/a/a$a;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v4, "DiskLruCacheWrapper"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    const-string v4, "DiskLruCacheWrapper"

    const-string v5, "Unable to put to disk cache"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    :cond_2
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/load/engine/b/c;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/b/c;->b(Lcom/bumptech/glide/load/b;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/b/e;->e:Lcom/bumptech/glide/load/engine/b/c;

    invoke-virtual {v5, p1}, Lcom/bumptech/glide/load/engine/b/c;->b(Lcom/bumptech/glide/load/b;)V

    throw v4
.end method

.method public b(Lcom/bumptech/glide/load/b;)V
    .locals 4
    .param p1, "key"    # Lcom/bumptech/glide/load/b;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/e;->f:Lcom/bumptech/glide/load/engine/b/l;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/engine/b/l;->a(Lcom/bumptech/glide/load/b;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "safeKey":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b/e;->b()Lcom/bumptech/glide/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/a/a;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "DiskLruCacheWrapper"

    const-string v3, "Unable to delete from disk cache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
