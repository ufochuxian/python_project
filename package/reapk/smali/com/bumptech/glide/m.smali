.class public Lcom/bumptech/glide/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/bumptech/glide/load/engine/c;

.field private c:Lcom/bumptech/glide/load/engine/a/c;

.field private d:Lcom/bumptech/glide/load/engine/b/i;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/bumptech/glide/load/DecodeFormat;

.field private h:Lcom/bumptech/glide/load/engine/b/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/m;->a:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/l;
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/m;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 171
    .local v7, "cores":I
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v0, v7}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->e:Ljava/util/concurrent/ExecutorService;

    .line 173
    .end local v7    # "cores":I
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/m;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->f:Ljava/util/concurrent/ExecutorService;

    .line 177
    :cond_1
    new-instance v6, Lcom/bumptech/glide/load/engine/b/k;

    iget-object v0, p0, Lcom/bumptech/glide/m;->a:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/bumptech/glide/load/engine/b/k;-><init>(Landroid/content/Context;)V

    .line 178
    .local v6, "calculator":Lcom/bumptech/glide/load/engine/b/k;
    iget-object v0, p0, Lcom/bumptech/glide/m;->c:Lcom/bumptech/glide/load/engine/a/c;

    if-nez v0, :cond_2

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 180
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/b/k;->b()I

    move-result v8

    .line 181
    .local v8, "size":I
    new-instance v0, Lcom/bumptech/glide/load/engine/a/f;

    invoke-direct {v0, v8}, Lcom/bumptech/glide/load/engine/a/f;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->c:Lcom/bumptech/glide/load/engine/a/c;

    .line 187
    .end local v8    # "size":I
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/load/engine/b/i;

    if-nez v0, :cond_3

    .line 188
    new-instance v0, Lcom/bumptech/glide/load/engine/b/h;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/b/k;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/b/h;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/load/engine/b/i;

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/m;->h:Lcom/bumptech/glide/load/engine/b/a$a;

    if-nez v0, :cond_4

    .line 192
    new-instance v0, Lcom/bumptech/glide/load/engine/b/g;

    iget-object v1, p0, Lcom/bumptech/glide/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/b/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->h:Lcom/bumptech/glide/load/engine/b/a$a;

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/load/engine/c;

    if-nez v0, :cond_5

    .line 196
    new-instance v0, Lcom/bumptech/glide/load/engine/c;

    iget-object v1, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/load/engine/b/i;

    iget-object v2, p0, Lcom/bumptech/glide/m;->h:Lcom/bumptech/glide/load/engine/b/a$a;

    iget-object v3, p0, Lcom/bumptech/glide/m;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/bumptech/glide/m;->e:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/load/engine/c;

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/load/DecodeFormat;

    if-nez v0, :cond_6

    .line 200
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    iput-object v0, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/load/DecodeFormat;

    .line 203
    :cond_6
    new-instance v0, Lcom/bumptech/glide/l;

    iget-object v1, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/load/engine/c;

    iget-object v2, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/load/engine/b/i;

    iget-object v3, p0, Lcom/bumptech/glide/m;->c:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v4, p0, Lcom/bumptech/glide/m;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/load/engine/c;Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/a/c;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V

    return-object v0

    .line 183
    :cond_7
    new-instance v0, Lcom/bumptech/glide/load/engine/a/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->c:Lcom/bumptech/glide/load/engine/a/c;

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/m;
    .locals 0
    .param p1, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/load/DecodeFormat;

    .line 159
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/m;
    .locals 0
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bumptech/glide/m;->c:Lcom/bumptech/glide/load/engine/a/c;

    .line 47
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/b/a$a;)Lcom/bumptech/glide/m;
    .locals 0
    .param p1, "diskCacheFactory"    # Lcom/bumptech/glide/load/engine/b/a$a;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bumptech/glide/m;->h:Lcom/bumptech/glide/load/engine/b/a$a;

    .line 92
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/b/a;)Lcom/bumptech/glide/m;
    .locals 1
    .param p1, "diskCache"    # Lcom/bumptech/glide/load/engine/b/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/bumptech/glide/m$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/m$1;-><init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/load/engine/b/a;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/load/engine/b/a$a;)Lcom/bumptech/glide/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/b/i;)Lcom/bumptech/glide/m;
    .locals 0
    .param p1, "memoryCache"    # Lcom/bumptech/glide/load/engine/b/i;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/load/engine/b/i;

    .line 59
    return-object p0
.end method

.method a(Lcom/bumptech/glide/load/engine/c;)Lcom/bumptech/glide/m;
    .locals 0
    .param p1, "engine"    # Lcom/bumptech/glide/load/engine/c;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/load/engine/c;

    .line 165
    return-object p0
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)Lcom/bumptech/glide/m;
    .locals 0
    .param p1, "service"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/bumptech/glide/m;->e:Ljava/util/concurrent/ExecutorService;

    .line 112
    return-object p0
.end method

.method public b(Ljava/util/concurrent/ExecutorService;)Lcom/bumptech/glide/m;
    .locals 0
    .param p1, "service"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/bumptech/glide/m;->f:Ljava/util/concurrent/ExecutorService;

    .line 132
    return-object p0
.end method
