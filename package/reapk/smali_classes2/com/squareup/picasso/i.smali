.class Lcom/squareup/picasso/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/i$c;,
        Lcom/squareup/picasso/i$b;,
        Lcom/squareup/picasso/i$a;
    }
.end annotation


# static fields
.field private static final D:I = 0x1f4

.field private static final E:I = 0x1

.field private static final F:I = 0x0

.field private static final G:Ljava/lang/String; = "Dispatcher"

.field private static final H:I = 0xc8

.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4

.field static final e:I = 0x5

.field static final f:I = 0x6

.field static final g:I = 0x7

.field static final h:I = 0x8

.field static final i:I = 0x9

.field static final j:I = 0xa

.field static final k:I = 0xb

.field static final l:I = 0xc

.field static final m:I = 0xd


# instance fields
.field final A:Lcom/squareup/picasso/i$c;

.field final B:Z

.field C:Z

.field final n:Lcom/squareup/picasso/i$b;

.field final o:Landroid/content/Context;

.field final p:Ljava/util/concurrent/ExecutorService;

.field final q:Lcom/squareup/picasso/Downloader;

.field final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/picasso/c;",
            ">;"
        }
    .end annotation
.end field

.field final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation
.end field

.field final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation
.end field

.field final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final v:Landroid/os/Handler;

.field final w:Landroid/os/Handler;

.field final x:Lcom/squareup/picasso/d;

.field final y:Lcom/squareup/picasso/z;

.field final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/d;Lcom/squareup/picasso/z;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "mainThreadHandler"    # Landroid/os/Handler;
    .param p4, "downloader"    # Lcom/squareup/picasso/Downloader;
    .param p5, "cache"    # Lcom/squareup/picasso/d;
    .param p6, "stats"    # Lcom/squareup/picasso/z;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/squareup/picasso/i$b;

    invoke-direct {v0}, Lcom/squareup/picasso/i$b;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/i;->n:Lcom/squareup/picasso/i$b;

    .line 101
    iget-object v0, p0, Lcom/squareup/picasso/i;->n:Lcom/squareup/picasso/i$b;

    invoke-virtual {v0}, Lcom/squareup/picasso/i$b;->start()V

    .line 102
    iput-object p1, p0, Lcom/squareup/picasso/i;->o:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/squareup/picasso/i;->p:Ljava/util/concurrent/ExecutorService;

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/i;->r:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/i;->s:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/i;->t:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/i;->u:Ljava/util/Set;

    .line 108
    new-instance v0, Lcom/squareup/picasso/i$a;

    iget-object v1, p0, Lcom/squareup/picasso/i;->n:Lcom/squareup/picasso/i$b;

    invoke-virtual {v1}, Lcom/squareup/picasso/i$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/squareup/picasso/i$a;-><init>(Landroid/os/Looper;Lcom/squareup/picasso/i;)V

    iput-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    .line 109
    iput-object p4, p0, Lcom/squareup/picasso/i;->q:Lcom/squareup/picasso/Downloader;

    .line 110
    iput-object p3, p0, Lcom/squareup/picasso/i;->w:Landroid/os/Handler;

    .line 111
    iput-object p5, p0, Lcom/squareup/picasso/i;->x:Lcom/squareup/picasso/d;

    .line 112
    iput-object p6, p0, Lcom/squareup/picasso/i;->y:Lcom/squareup/picasso/z;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/i;->z:Ljava/util/List;

    .line 114
    iget-object v0, p0, Lcom/squareup/picasso/i;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/af;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/picasso/i;->C:Z

    .line 115
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/squareup/picasso/af;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/picasso/i;->B:Z

    .line 116
    new-instance v0, Lcom/squareup/picasso/i$c;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/i$c;-><init>(Lcom/squareup/picasso/i;)V

    iput-object v0, p0, Lcom/squareup/picasso/i;->A:Lcom/squareup/picasso/i$c;

    .line 117
    iget-object v0, p0, Lcom/squareup/picasso/i;->A:Lcom/squareup/picasso/i$c;

    invoke-virtual {v0}, Lcom/squareup/picasso/i$c;->a()V

    .line 118
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/c;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/c;

    .line 453
    .local v2, "hunter":Lcom/squareup/picasso/c;
    invoke-virtual {v2}, Lcom/squareup/picasso/c;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 454
    .local v3, "picasso":Lcom/squareup/picasso/Picasso;
    iget-boolean v4, v3, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v4, :cond_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/c;

    .line 457
    .local v0, "bitmapHunter":Lcom/squareup/picasso/c;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_2
    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 460
    .end local v0    # "bitmapHunter":Lcom/squareup/picasso/c;
    :cond_3
    const-string v4, "Dispatcher"

    const-string v5, "delivered"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 404
    iget-object v2, p0, Lcom/squareup/picasso/i;->s:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 405
    iget-object v2, p0, Lcom/squareup/picasso/i;->s:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 406
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/picasso/a;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a;

    .line 408
    .local v0, "action":Lcom/squareup/picasso/a;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 409
    invoke-virtual {v0}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v2, :cond_0

    .line 410
    const-string v2, "Dispatcher"

    const-string v3, "replaying"

    invoke-virtual {v0}, Lcom/squareup/picasso/a;->c()Lcom/squareup/picasso/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/a;Z)V

    goto :goto_0

    .line 415
    .end local v0    # "action":Lcom/squareup/picasso/a;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/picasso/a;>;"
    :cond_1
    return-void
.end method

.method private e(Lcom/squareup/picasso/a;)V
    .locals 2
    .param p1, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 433
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 434
    .local v0, "target":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 435
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/squareup/picasso/a;->j:Z

    .line 436
    iget-object v1, p0, Lcom/squareup/picasso/i;->s:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_0
    return-void
.end method

.method private f(Lcom/squareup/picasso/c;)V
    .locals 5
    .param p1, "hunter"    # Lcom/squareup/picasso/c;

    .prologue
    .line 418
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->i()Lcom/squareup/picasso/a;

    move-result-object v0

    .line 419
    .local v0, "action":Lcom/squareup/picasso/a;
    if-eqz v0, :cond_0

    .line 420
    invoke-direct {p0, v0}, Lcom/squareup/picasso/i;->e(Lcom/squareup/picasso/a;)V

    .line 422
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->k()Ljava/util/List;

    move-result-object v3

    .line 423
    .local v3, "joined":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/a;>;"
    if-eqz v3, :cond_1

    .line 425
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "n":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 426
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/a;

    .line 427
    .local v2, "join":Lcom/squareup/picasso/a;
    invoke-direct {p0, v2}, Lcom/squareup/picasso/i;->e(Lcom/squareup/picasso/a;)V

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    .end local v1    # "i":I
    .end local v2    # "join":Lcom/squareup/picasso/a;
    .end local v4    # "n":I
    :cond_1
    return-void
.end method

.method private g(Lcom/squareup/picasso/c;)V
    .locals 4
    .param p1, "hunter"    # Lcom/squareup/picasso/c;

    .prologue
    const/4 v1, 0x7

    .line 441
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/i;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/squareup/picasso/i;->p:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/squareup/picasso/t;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/squareup/picasso/i;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/i;->q:Lcom/squareup/picasso/Downloader;

    invoke-interface {v0}, Lcom/squareup/picasso/Downloader;->a()V

    .line 126
    iget-object v0, p0, Lcom/squareup/picasso/i;->n:Lcom/squareup/picasso/i$b;

    invoke-virtual {v0}, Lcom/squareup/picasso/i$b;->quit()Z

    .line 128
    sget-object v0, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/picasso/i$1;

    invoke-direct {v1, p0}, Lcom/squareup/picasso/i$1;-><init>(Lcom/squareup/picasso/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method a(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    return-void
.end method

.method a(Lcom/squareup/picasso/a;)V
    .locals 3
    .param p1, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    return-void
.end method

.method a(Lcom/squareup/picasso/a;Z)V
    .locals 6
    .param p1, "action"    # Lcom/squareup/picasso/a;
    .param p2, "dismissFailed"    # Z

    .prologue
    .line 177
    iget-object v1, p0, Lcom/squareup/picasso/i;->u:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/squareup/picasso/i;->t:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "Dispatcher"

    const-string v2, "paused"

    iget-object v3, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    invoke-virtual {v3}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "because tag \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->j()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is paused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/i;->r:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/c;

    .line 187
    .local v0, "hunter":Lcom/squareup/picasso/c;
    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/c;->a(Lcom/squareup/picasso/a;)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/i;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v1, :cond_0

    .line 194
    const-string v1, "Dispatcher"

    const-string v2, "ignored"

    iget-object v3, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    invoke-virtual {v3}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "because shut down"

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/picasso/i;->x:Lcom/squareup/picasso/d;

    iget-object v3, p0, Lcom/squareup/picasso/i;->y:Lcom/squareup/picasso/z;

    invoke-static {v1, p0, v2, v3, p1}, Lcom/squareup/picasso/c;->a(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/z;Lcom/squareup/picasso/a;)Lcom/squareup/picasso/c;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/squareup/picasso/i;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/picasso/c;->m:Ljava/util/concurrent/Future;

    .line 201
    iget-object v1, p0, Lcom/squareup/picasso/i;->r:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    if-eqz p2, :cond_4

    .line 203
    iget-object v1, p0, Lcom/squareup/picasso/i;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_4
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "Dispatcher"

    const-string v2, "enqueued"

    iget-object v3, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    invoke-virtual {v3}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Lcom/squareup/picasso/c;)V
    .locals 3
    .param p1, "hunter"    # Lcom/squareup/picasso/c;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    return-void
.end method

.method a(Lcom/squareup/picasso/c;Z)V
    .locals 5
    .param p1, "hunter"    # Lcom/squareup/picasso/c;
    .param p2, "willReplay"    # Z

    .prologue
    .line 381
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_0

    .line 382
    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {p1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "for error"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_1

    const-string v0, " (will replay)"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/i;->r:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-direct {p0, p1}, Lcom/squareup/picasso/i;->g(Lcom/squareup/picasso/c;)V

    .line 387
    return-void

    .line 382
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method

.method a(Z)V
    .locals 5
    .param p1, "airplaneMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    iget-object v3, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    const/16 v4, 0xa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void

    :cond_0
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method b()V
    .locals 4

    .prologue
    .line 374
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/picasso/i;->z:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/c;>;"
    iget-object v1, p0, Lcom/squareup/picasso/i;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 376
    iget-object v1, p0, Lcom/squareup/picasso/i;->w:Landroid/os/Handler;

    iget-object v2, p0, Lcom/squareup/picasso/i;->w:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 377
    invoke-direct {p0, v0}, Lcom/squareup/picasso/i;->a(Ljava/util/List;)V

    .line 378
    return-void
.end method

.method b(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/squareup/picasso/i;->p:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/squareup/picasso/t;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/squareup/picasso/i;->p:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/squareup/picasso/t;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/t;->a(Landroid/net/NetworkInfo;)V

    .line 398
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/squareup/picasso/i;->c()V

    .line 401
    :cond_1
    return-void
.end method

.method b(Lcom/squareup/picasso/a;)V
    .locals 3
    .param p1, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method

.method b(Lcom/squareup/picasso/c;)V
    .locals 4
    .param p1, "hunter"    # Lcom/squareup/picasso/c;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    return-void
.end method

.method b(Ljava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method

.method b(Z)V
    .locals 0
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/squareup/picasso/i;->C:Z

    .line 391
    return-void
.end method

.method c(Lcom/squareup/picasso/a;)V
    .locals 1
    .param p1, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/a;Z)V

    .line 174
    return-void
.end method

.method c(Lcom/squareup/picasso/c;)V
    .locals 3
    .param p1, "hunter"    # Lcom/squareup/picasso/c;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/i;->v:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method c(Ljava/lang/Object;)V
    .locals 13
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 240
    iget-object v8, p0, Lcom/squareup/picasso/i;->u:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 293
    :cond_0
    return-void

    .line 246
    :cond_1
    iget-object v8, p0, Lcom/squareup/picasso/i;->r:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/picasso/c;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 247
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/c;

    .line 248
    .local v2, "hunter":Lcom/squareup/picasso/c;
    invoke-virtual {v2}, Lcom/squareup/picasso/c;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v8

    iget-boolean v6, v8, Lcom/squareup/picasso/Picasso;->l:Z

    .line 250
    .local v6, "loggingEnabled":Z
    invoke-virtual {v2}, Lcom/squareup/picasso/c;->i()Lcom/squareup/picasso/a;

    move-result-object v7

    .line 251
    .local v7, "single":Lcom/squareup/picasso/a;
    invoke-virtual {v2}, Lcom/squareup/picasso/c;->k()Ljava/util/List;

    move-result-object v5

    .line 252
    .local v5, "joined":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/a;>;"
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v1, 0x1

    .line 255
    .local v1, "hasMultiple":Z
    :goto_1
    if-nez v7, :cond_3

    if-eqz v1, :cond_2

    .line 259
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/squareup/picasso/a;->j()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 260
    invoke-virtual {v2, v7}, Lcom/squareup/picasso/c;->b(Lcom/squareup/picasso/a;)V

    .line 261
    iget-object v8, p0, Lcom/squareup/picasso/i;->t:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    if-eqz v6, :cond_4

    .line 263
    const-string v8, "Dispatcher"

    const-string v9, "paused"

    iget-object v10, v7, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    invoke-virtual {v10}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "because tag \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' was paused"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_4
    if-eqz v1, :cond_8

    .line 269
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_8

    .line 270
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a;

    .line 271
    .local v0, "action":Lcom/squareup/picasso/a;
    invoke-virtual {v0}, Lcom/squareup/picasso/a;->j()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 269
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 252
    .end local v0    # "action":Lcom/squareup/picasso/a;
    .end local v1    # "hasMultiple":Z
    .end local v3    # "i":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 275
    .restart local v0    # "action":Lcom/squareup/picasso/a;
    .restart local v1    # "hasMultiple":Z
    .restart local v3    # "i":I
    :cond_7
    invoke-virtual {v2, v0}, Lcom/squareup/picasso/c;->b(Lcom/squareup/picasso/a;)V

    .line 276
    iget-object v8, p0, Lcom/squareup/picasso/i;->t:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    if-eqz v6, :cond_5

    .line 278
    const-string v8, "Dispatcher"

    const-string v9, "paused"

    iget-object v10, v0, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    invoke-virtual {v10}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "because tag \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' was paused"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 286
    .end local v0    # "action":Lcom/squareup/picasso/a;
    .end local v3    # "i":I
    :cond_8
    invoke-virtual {v2}, Lcom/squareup/picasso/c;->b()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 287
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 288
    if-eqz v6, :cond_2

    .line 289
    const-string v8, "Dispatcher"

    const-string v9, "canceled"

    invoke-static {v2}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "all actions paused"

    invoke-static {v8, v9, v10, v11}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method d(Lcom/squareup/picasso/a;)V
    .locals 7
    .param p1, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/picasso/i;->r:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/c;

    .line 214
    .local v0, "hunter":Lcom/squareup/picasso/c;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/c;->b(Lcom/squareup/picasso/a;)V

    .line 216
    invoke-virtual {v0}, Lcom/squareup/picasso/c;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/squareup/picasso/i;->r:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v3, :cond_0

    .line 219
    const-string v3, "Dispatcher"

    const-string v4, "canceled"

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->c()Lcom/squareup/picasso/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/squareup/picasso/i;->u:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->j()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/squareup/picasso/i;->t:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v3, :cond_1

    .line 227
    const-string v3, "Dispatcher"

    const-string v4, "canceled"

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->c()Lcom/squareup/picasso/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "because paused request got canceled"

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-object v3, p0, Lcom/squareup/picasso/i;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/a;

    .line 233
    .local v2, "remove":Lcom/squareup/picasso/a;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v3, :cond_2

    .line 234
    const-string v3, "Dispatcher"

    const-string v4, "canceled"

    invoke-virtual {v2}, Lcom/squareup/picasso/a;->c()Lcom/squareup/picasso/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from replaying"

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_2
    return-void
.end method

.method d(Lcom/squareup/picasso/c;)V
    .locals 10
    .param p1, "hunter"    # Lcom/squareup/picasso/c;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 319
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->c()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v8, p0, Lcom/squareup/picasso/i;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 322
    invoke-virtual {p0, p1, v7}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;Z)V

    goto :goto_0

    .line 326
    :cond_2
    const/4 v2, 0x0

    .line 327
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v8, p0, Lcom/squareup/picasso/i;->B:Z

    if-eqz v8, :cond_3

    .line 328
    iget-object v8, p0, Lcom/squareup/picasso/i;->o:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-static {v8, v9}, Lcom/squareup/picasso/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 329
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 332
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    move v1, v6

    .line 333
    .local v1, "hasConnectivity":Z
    :goto_1
    iget-boolean v8, p0, Lcom/squareup/picasso/i;->C:Z

    invoke-virtual {p1, v8, v2}, Lcom/squareup/picasso/c;->a(ZLandroid/net/NetworkInfo;)Z

    move-result v3

    .line 334
    .local v3, "shouldRetryHunter":Z
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->e()Z

    move-result v4

    .line 336
    .local v4, "supportsReplay":Z
    if-nez v3, :cond_6

    .line 338
    iget-boolean v8, p0, Lcom/squareup/picasso/i;->B:Z

    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    move v5, v6

    .line 339
    .local v5, "willReplay":Z
    :goto_2
    invoke-virtual {p0, p1, v5}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;Z)V

    .line 340
    if-eqz v5, :cond_0

    .line 341
    invoke-direct {p0, p1}, Lcom/squareup/picasso/i;->f(Lcom/squareup/picasso/c;)V

    goto :goto_0

    .end local v1    # "hasConnectivity":Z
    .end local v3    # "shouldRetryHunter":Z
    .end local v4    # "supportsReplay":Z
    .end local v5    # "willReplay":Z
    :cond_4
    move v1, v7

    .line 332
    goto :goto_1

    .restart local v1    # "hasConnectivity":Z
    .restart local v3    # "shouldRetryHunter":Z
    .restart local v4    # "supportsReplay":Z
    :cond_5
    move v5, v7

    .line 338
    goto :goto_2

    .line 347
    :cond_6
    iget-boolean v6, p0, Lcom/squareup/picasso/i;->B:Z

    if-eqz v6, :cond_7

    if-eqz v1, :cond_9

    .line 348
    :cond_7
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v6

    iget-boolean v6, v6, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v6, :cond_8

    .line 349
    const-string v6, "Dispatcher"

    const-string v7, "retrying"

    invoke-static {p1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_8
    iget-object v6, p0, Lcom/squareup/picasso/i;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    iput-object v6, p1, Lcom/squareup/picasso/c;->m:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 355
    :cond_9
    invoke-virtual {p0, p1, v4}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;Z)V

    .line 357
    if-eqz v4, :cond_0

    .line 358
    invoke-direct {p0, p1}, Lcom/squareup/picasso/i;->f(Lcom/squareup/picasso/c;)V

    goto :goto_0
.end method

.method d(Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 297
    iget-object v3, p0, Lcom/squareup/picasso/i;->u:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const/4 v1, 0x0

    .line 302
    .local v1, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/a;>;"
    iget-object v3, p0, Lcom/squareup/picasso/i;->t:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/picasso/a;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a;

    .line 304
    .local v0, "action":Lcom/squareup/picasso/a;
    invoke-virtual {v0}, Lcom/squareup/picasso/a;->j()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    if-nez v1, :cond_3

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/a;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .restart local v1    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/a;>;"
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 313
    .end local v0    # "action":Lcom/squareup/picasso/a;
    :cond_4
    if-eqz v1, :cond_0

    .line 314
    iget-object v3, p0, Lcom/squareup/picasso/i;->w:Landroid/os/Handler;

    iget-object v4, p0, Lcom/squareup/picasso/i;->w:Landroid/os/Handler;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method e(Lcom/squareup/picasso/c;)V
    .locals 4
    .param p1, "hunter"    # Lcom/squareup/picasso/c;

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/squareup/picasso/i;->x:Lcom/squareup/picasso/d;

    invoke-virtual {p1}, Lcom/squareup/picasso/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/picasso/c;->f()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/picasso/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/i;->r:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-direct {p0, p1}, Lcom/squareup/picasso/i;->g(Lcom/squareup/picasso/c;)V

    .line 368
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_1

    .line 369
    const-string v0, "Dispatcher"

    const-string v1, "batched"

    invoke-static {p1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "for completion"

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_1
    return-void
.end method
