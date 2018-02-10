.class Lcom/bumptech/glide/load/engine/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/b$b;,
        Lcom/bumptech/glide/load/engine/b$a;,
        Lcom/bumptech/glide/load/engine/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DecodeJob"

.field private static final b:Lcom/bumptech/glide/load/engine/b$b;


# instance fields
.field private final c:Lcom/bumptech/glide/load/engine/f;

.field private final d:I

.field private final e:I

.field private final f:Lcom/bumptech/glide/load/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/c",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/bumptech/glide/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/b",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/load/resource/f/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/load/engine/b$a;

.field private final k:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final l:Lcom/bumptech/glide/Priority;

.field private final m:Lcom/bumptech/glide/load/engine/b$b;

.field private volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/bumptech/glide/load/engine/b$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/b;->b:Lcom/bumptech/glide/load/engine/b$b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/f;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/load/engine/b$a;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V
    .locals 12
    .param p1, "resultKey"    # Lcom/bumptech/glide/load/engine/f;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p8, "diskCacheProvider"    # Lcom/bumptech/glide/load/engine/b$a;
    .param p9, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p10, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/f;",
            "II",
            "Lcom/bumptech/glide/load/a/c",
            "<TA;>;",
            "Lcom/bumptech/glide/f/b",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/f",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/engine/b$a;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    .local p4, "fetcher":Lcom/bumptech/glide/load/a/c;, "Lcom/bumptech/glide/load/a/c<TA;>;"
    .local p5, "loadProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<TA;TT;>;"
    .local p6, "transformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<TT;>;"
    .local p7, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<TT;TZ;>;"
    sget-object v11, Lcom/bumptech/glide/load/engine/b;->b:Lcom/bumptech/glide/load/engine/b$b;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/b;-><init>(Lcom/bumptech/glide/load/engine/f;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/load/engine/b$a;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/b$b;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/f;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/load/engine/b$a;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/b$b;)V
    .locals 0
    .param p1, "resultKey"    # Lcom/bumptech/glide/load/engine/f;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p8, "diskCacheProvider"    # Lcom/bumptech/glide/load/engine/b$a;
    .param p9, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p10, "priority"    # Lcom/bumptech/glide/Priority;
    .param p11, "fileOpener"    # Lcom/bumptech/glide/load/engine/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/f;",
            "II",
            "Lcom/bumptech/glide/load/a/c",
            "<TA;>;",
            "Lcom/bumptech/glide/f/b",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/f",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/engine/b$a;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/b$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    .local p4, "fetcher":Lcom/bumptech/glide/load/a/c;, "Lcom/bumptech/glide/load/a/c<TA;>;"
    .local p5, "loadProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<TA;TT;>;"
    .local p6, "transformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<TT;>;"
    .local p7, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<TT;TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    .line 61
    iput p2, p0, Lcom/bumptech/glide/load/engine/b;->d:I

    .line 62
    iput p3, p0, Lcom/bumptech/glide/load/engine/b;->e:I

    .line 63
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/b;->f:Lcom/bumptech/glide/load/a/c;

    .line 64
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/b;->g:Lcom/bumptech/glide/f/b;

    .line 65
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/b;->h:Lcom/bumptech/glide/load/f;

    .line 66
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/b;->i:Lcom/bumptech/glide/load/resource/f/f;

    .line 67
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/b;->j:Lcom/bumptech/glide/load/engine/b$a;

    .line 68
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/b;->k:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 69
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/b;->l:Lcom/bumptech/glide/Priority;

    .line 70
    iput-object p11, p0, Lcom/bumptech/glide/load/engine/b;->m:Lcom/bumptech/glide/load/engine/b$b;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/b;)Lcom/bumptech/glide/load/engine/b$b;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/b;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->m:Lcom/bumptech/glide/load/engine/b$b;

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/k;
    .locals 5
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b;->j:Lcom/bumptech/glide/load/engine/b$a;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/b$a;->a()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/b/a;->a(Lcom/bumptech/glide/load/b;)Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "cacheFile":Ljava/io/File;
    if-nez v0, :cond_1

    .line 217
    const/4 v1, 0x0

    .line 228
    :cond_0
    :goto_0
    return-object v1

    .line 220
    :cond_1
    const/4 v1, 0x0

    .line 222
    .local v1, "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b;->g:Lcom/bumptech/glide/f/b;

    invoke-interface {v2}, Lcom/bumptech/glide/f/b;->a()Lcom/bumptech/glide/load/d;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/load/engine/b;->d:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/b;->e:I

    invoke-interface {v2, v0, v3, v4}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 224
    if-nez v1, :cond_0

    .line 225
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b;->j:Lcom/bumptech/glide/load/engine/b$a;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/b$a;->a()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/b/a;->b(Lcom/bumptech/glide/load/b;)V

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 225
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b;->j:Lcom/bumptech/glide/load/engine/b$a;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/b$a;->a()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/engine/b/a;->b(Lcom/bumptech/glide/load/b;)V

    :cond_2
    throw v2
.end method

.method private a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    .local p1, "decoded":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    const/4 v5, 0x2

    .line 138
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v2

    .line 139
    .local v2, "startTime":J
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/b;->c(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v1

    .line 140
    .local v1, "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    const-string v4, "DecodeJob"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    const-string v4, "Transformed resource from source"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;J)V

    .line 144
    :cond_0
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/b;->b(Lcom/bumptech/glide/load/engine/k;)V

    .line 146
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v2

    .line 147
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/b;->d(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 148
    .local v0, "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TZ;>;"
    const-string v4, "DecodeJob"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    const-string v4, "Transcoded transformed from source"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;J)V

    .line 151
    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    .local p1, "data":Ljava/lang/Object;, "TA;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->k:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/b;->b(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 195
    .local v0, "decoded":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 189
    .end local v0    # "decoded":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    :cond_1
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v2

    .line 190
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->g:Lcom/bumptech/glide/f/b;

    invoke-interface {v1}, Lcom/bumptech/glide/f/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v1

    iget v4, p0, Lcom/bumptech/glide/load/engine/b;->d:I

    iget v5, p0, Lcom/bumptech/glide/load/engine/b;->e:I

    invoke-interface {v1, p1, v4, v5}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 191
    .restart local v0    # "decoded":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "Decoded from source"

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .prologue
    .line 251
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    const-string v0, "DecodeJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/bumptech/glide/i/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    .local p1, "data":Ljava/lang/Object;, "TA;"
    const/4 v6, 0x2

    .line 199
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v2

    .line 200
    .local v2, "startTime":J
    new-instance v1, Lcom/bumptech/glide/load/engine/b$c;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b;->g:Lcom/bumptech/glide/f/b;

    invoke-interface {v4}, Lcom/bumptech/glide/f/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v4

    invoke-direct {v1, p0, v4, p1}, Lcom/bumptech/glide/load/engine/b$c;-><init>(Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/a;Ljava/lang/Object;)V

    .line 201
    .local v1, "writer":Lcom/bumptech/glide/load/engine/b$c;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>.c<TA;>;"
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b;->j:Lcom/bumptech/glide/load/engine/b$a;

    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/b$a;->a()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/f;->a()Lcom/bumptech/glide/load/b;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/bumptech/glide/load/engine/b/a;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/b/a$b;)V

    .line 202
    const-string v4, "DecodeJob"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    const-string v4, "Wrote source to cache"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;J)V

    .line 206
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v2

    .line 207
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/f;->a()Lcom/bumptech/glide/load/b;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/b;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 208
    .local v0, "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    const-string v4, "DecodeJob"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 209
    const-string v4, "Decoded source from cache"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;J)V

    .line 211
    :cond_1
    return-object v0
.end method

.method private b(Lcom/bumptech/glide/load/engine/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    .local p1, "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b;->k:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v0

    .line 159
    .local v0, "startTime":J
    new-instance v2, Lcom/bumptech/glide/load/engine/b$c;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b;->g:Lcom/bumptech/glide/f/b;

    invoke-interface {v3}, Lcom/bumptech/glide/f/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/bumptech/glide/load/engine/b$c;-><init>(Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/a;Ljava/lang/Object;)V

    .line 160
    .local v2, "writer":Lcom/bumptech/glide/load/engine/b$c;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>.c<Lcom/bumptech/glide/load/engine/k<TT;>;>;"
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b;->j:Lcom/bumptech/glide/load/engine/b$a;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/b$a;->a()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-interface {v3, v4, v2}, Lcom/bumptech/glide/load/engine/b/a;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/b/a$b;)V

    .line 161
    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    const-string v3, "Wrote transformed from source to cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private c(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    .local p1, "decoded":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    if-nez p1, :cond_1

    .line 233
    const/4 v0, 0x0

    .line 240
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->h:Lcom/bumptech/glide/load/f;

    iget v2, p0, Lcom/bumptech/glide/load/engine/b;->d:I

    iget v3, p0, Lcom/bumptech/glide/load/engine/b;->e:I

    invoke-interface {v1, p1, v2, v3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/k;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 237
    .local v0, "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->d()V

    goto :goto_0
.end method

.method private d(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    .local p1, "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    if-nez p1, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->i:Lcom/bumptech/glide/load/resource/f/f;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/resource/f/f;->a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Lcom/bumptech/glide/load/engine/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/k",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    const/4 v1, 0x0

    .line 169
    .local v1, "decoded":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v2

    .line 170
    .local v2, "startTime":J
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b;->f:Lcom/bumptech/glide/load/a/c;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/b;->l:Lcom/bumptech/glide/Priority;

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/a/c;->a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "data":Ljava/lang/Object;, "TA;"
    const-string v4, "DecodeJob"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const-string v4, "Fetched data"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;J)V

    .line 174
    :cond_0
    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/b;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 175
    const/4 v4, 0x0

    .line 179
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/b;->f:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v5}, Lcom/bumptech/glide/load/a/c;->a()V

    .line 181
    :goto_0
    return-object v4

    .line 177
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 179
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b;->f:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v4}, Lcom/bumptech/glide/load/a/c;->a()V

    move-object v4, v1

    .line 181
    goto :goto_0

    .line 179
    .end local v0    # "data":Ljava/lang/Object;, "TA;"
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/b;->f:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v5}, Lcom/bumptech/glide/load/a/c;->a()V

    throw v4
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/k",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    const/4 v5, 0x2

    .line 80
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b;->k:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :cond_1
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v2

    .line 85
    .local v2, "startTime":J
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/b;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v1

    .line 86
    .local v1, "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    const-string v4, "DecodeJob"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    const-string v4, "Decoded transformed from cache"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;J)V

    .line 89
    :cond_2
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v2

    .line 90
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/b;->d(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 91
    .local v0, "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TZ;>;"
    const-string v4, "DecodeJob"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    const-string v4, "Transcoded transformed from cache"

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public b()Lcom/bumptech/glide/load/engine/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/k",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->k:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 113
    :goto_0
    return-object v1

    .line 108
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v2

    .line 109
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->a()Lcom/bumptech/glide/load/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/b;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 110
    .local v0, "decoded":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string v1, "Decoded source from cache"

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;J)V

    .line 113
    :cond_1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/b;->a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v1

    goto :goto_0
.end method

.method public c()Lcom/bumptech/glide/load/engine/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/k",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b;->e()Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 129
    .local v0, "decoded":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TT;>;"
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/b;->a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v1

    return-object v1
.end method

.method public d()V
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TA;TT;TZ;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/b;->n:Z

    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->f:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/c;->c()V

    .line 135
    return-void
.end method
