.class public Lcom/nostra13/universalimageloader/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/a/a/a;


# static fields
.field public static final a:I = 0x8000

.field public static final b:Landroid/graphics/Bitmap$CompressFormat;

.field public static final c:I = 0x64

.field private static final i:Ljava/lang/String; = " argument must be not null"

.field private static final j:Ljava/lang/String; = " argument must be positive number"


# instance fields
.field protected d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

.field protected final e:Lcom/nostra13/universalimageloader/a/a/b/a;

.field protected f:I

.field protected g:Landroid/graphics/Bitmap$CompressFormat;

.field protected h:I

.field private k:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->b:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/a/a/b/a;J)V
    .locals 7
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/a/a/b/a;
    .param p3, "cacheMaxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/a/a/a/a/b;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/a/a/b/a;JI)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/a/a/b/a;JI)V
    .locals 8
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;
    .param p3, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/a/a/b/a;
    .param p4, "cacheMaxSize"    # J
    .param p6, "cacheMaxFileCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x8000

    iput v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->f:I

    .line 57
    sget-object v0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->b:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->g:Landroid/graphics/Bitmap$CompressFormat;

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->h:I

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    cmp-long v0, p4, v2

    if-gez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxSize argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    if-gez p6, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxFileCount argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    if-nez p3, :cond_3

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3
    cmp-long v0, p4, v2

    if-nez v0, :cond_4

    .line 98
    const-wide p4, 0x7fffffffffffffffL

    .line 100
    :cond_4
    if-nez p6, :cond_5

    .line 101
    const p6, 0x7fffffff

    .line 104
    :cond_5
    iput-object p2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->k:Ljava/io/File;

    .line 105
    iput-object p3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->e:Lcom/nostra13/universalimageloader/a/a/b/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move v6, p6

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/nostra13/universalimageloader/a/a/a/a/b;->a(Ljava/io/File;Ljava/io/File;JI)V

    .line 107
    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;JI)V
    .locals 7
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;
    .param p3, "cacheMaxSize"    # J
    .param p5, "cacheMaxFileCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move-wide v4, p3

    move v6, p5

    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/File;IIJI)Lcom/nostra13/universalimageloader/a/a/a/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V

    .line 115
    if-eqz p2, :cond_1

    .line 116
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/nostra13/universalimageloader/a/a/a/a/b;->a(Ljava/io/File;Ljava/io/File;JI)V

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    if-nez v1, :cond_0

    .line 119
    throw v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->e:Lcom/nostra13/universalimageloader/a/a/b/a;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/a/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "snapshot":Lcom/nostra13/universalimageloader/a/a/a/a/a$c;
    :try_start_0
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/lang/String;)Lcom/nostra13/universalimageloader/a/a/a/a/a$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 134
    if-nez v1, :cond_1

    .line 139
    :goto_0
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->close()V

    :cond_0
    :goto_1
    return-object v2

    .line 134
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->a(I)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->close()V

    goto :goto_1

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;->close()V

    :cond_2
    throw v2
.end method

.method public a(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->f:I

    .line 229
    return-void
.end method

.method public a(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->g:Landroid/graphics/Bitmap$CompressFormat;

    .line 233
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->b(Ljava/lang/String;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    move-result-object v0

    .line 170
    .local v0, "editor":Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    if-nez v0, :cond_0

    .line 186
    :goto_0
    return v2

    .line 174
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->c(I)Ljava/io/OutputStream;

    move-result-object v3

    iget v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->f:I

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 175
    .local v1, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 177
    .local v2, "savedSuccessfully":Z
    :try_start_0
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->g:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->h:I

    invoke-virtual {p2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 179
    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/c;->a(Ljava/io/Closeable;)V

    .line 181
    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->a()V

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/c;->a(Ljava/io/Closeable;)V

    throw v3

    .line 184
    :cond_1
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->b()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/b/c$a;)Z
    .locals 5
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "imageStream"    # Ljava/io/InputStream;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/b/c$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->b(Ljava/lang/String;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    move-result-object v1

    .line 148
    .local v1, "editor":Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    if-nez v1, :cond_0

    .line 164
    :goto_0
    return v0

    .line 152
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->c(I)Ljava/io/OutputStream;

    move-result-object v3

    iget v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->f:I

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 153
    .local v2, "os":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 155
    .local v0, "copied":Z
    :try_start_0
    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->f:I

    invoke-static {p2, v2, p3, v3}, Lcom/nostra13/universalimageloader/b/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/b/c$a;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 157
    invoke-static {v2}, Lcom/nostra13/universalimageloader/b/c;->a(Ljava/io/Closeable;)V

    .line 158
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->a()V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->b()V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/nostra13/universalimageloader/b/c;->a(Ljava/io/Closeable;)V

    .line 158
    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->a()V

    .line 161
    :goto_1
    throw v3

    :cond_2
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->b()V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    .line 207
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0
    .param p1, "compressQuality"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->h:I

    .line 237
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 195
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V

    .line 195
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 7

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->k:Ljava/io/File;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->b()J

    move-result-wide v4

    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/b;->d:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->c()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nostra13/universalimageloader/a/a/a/a/b;->a(Ljava/io/File;Ljava/io/File;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_1
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 219
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
