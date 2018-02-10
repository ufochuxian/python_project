.class public Lcom/squareup/picasso/Picasso;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Picasso$LoadedFrom;,
        Lcom/squareup/picasso/Picasso$a;,
        Lcom/squareup/picasso/Picasso$b;,
        Lcom/squareup/picasso/Picasso$Priority;,
        Lcom/squareup/picasso/Picasso$d;,
        Lcom/squareup/picasso/Picasso$c;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "Picasso"

.field static final b:Landroid/os/Handler;

.field static c:Lcom/squareup/picasso/Picasso;


# instance fields
.field final d:Landroid/content/Context;

.field final e:Lcom/squareup/picasso/i;

.field final f:Lcom/squareup/picasso/d;

.field final g:Lcom/squareup/picasso/z;

.field final h:Ljava/util/Map;
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

.field final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/squareup/picasso/h;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field k:Z

.field volatile l:Z

.field m:Z

.field private final n:Lcom/squareup/picasso/Picasso$c;

.field private final o:Lcom/squareup/picasso/Picasso$d;

.field private final p:Lcom/squareup/picasso/Picasso$b;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/squareup/picasso/Picasso$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/squareup/picasso/Picasso;->c:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/Picasso$c;Lcom/squareup/picasso/Picasso$d;Ljava/util/List;Lcom/squareup/picasso/z;ZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dispatcher"    # Lcom/squareup/picasso/i;
    .param p3, "cache"    # Lcom/squareup/picasso/d;
    .param p4, "listener"    # Lcom/squareup/picasso/Picasso$c;
    .param p5, "requestTransformer"    # Lcom/squareup/picasso/Picasso$d;
    .param p7, "stats"    # Lcom/squareup/picasso/z;
    .param p8, "indicatorsEnabled"    # Z
    .param p9, "loggingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/squareup/picasso/i;",
            "Lcom/squareup/picasso/d;",
            "Lcom/squareup/picasso/Picasso$c;",
            "Lcom/squareup/picasso/Picasso$d;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/x;",
            ">;",
            "Lcom/squareup/picasso/z;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p6, "extraRequestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/x;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->d:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/squareup/picasso/Picasso;->e:Lcom/squareup/picasso/i;

    .line 165
    iput-object p3, p0, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/d;

    .line 166
    iput-object p4, p0, Lcom/squareup/picasso/Picasso;->n:Lcom/squareup/picasso/Picasso$c;

    .line 167
    iput-object p5, p0, Lcom/squareup/picasso/Picasso;->o:Lcom/squareup/picasso/Picasso$d;

    .line 169
    const/4 v1, 0x7

    .line 170
    .local v1, "builtInHandlers":I
    if-eqz p6, :cond_1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    .line 171
    .local v2, "extraCount":I
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    add-int v3, v1, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v0, "allRequestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/x;>;"
    new-instance v3, Lcom/squareup/picasso/y;

    invoke-direct {v3, p1}, Lcom/squareup/picasso/y;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    if-eqz p6, :cond_0

    .line 179
    invoke-interface {v0, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    :cond_0
    new-instance v3, Lcom/squareup/picasso/f;

    invoke-direct {v3, p1}, Lcom/squareup/picasso/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v3, Lcom/squareup/picasso/p;

    invoke-direct {v3, p1}, Lcom/squareup/picasso/p;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v3, Lcom/squareup/picasso/g;

    invoke-direct {v3, p1}, Lcom/squareup/picasso/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v3, Lcom/squareup/picasso/b;

    invoke-direct {v3, p1}, Lcom/squareup/picasso/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v3, Lcom/squareup/picasso/k;

    invoke-direct {v3, p1}, Lcom/squareup/picasso/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v3, Lcom/squareup/picasso/q;

    iget-object v4, p2, Lcom/squareup/picasso/i;->q:Lcom/squareup/picasso/Downloader;

    invoke-direct {v3, v4, p7}, Lcom/squareup/picasso/q;-><init>(Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/z;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/picasso/Picasso;->q:Ljava/util/List;

    .line 189
    iput-object p7, p0, Lcom/squareup/picasso/Picasso;->g:Lcom/squareup/picasso/z;

    .line 190
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/squareup/picasso/Picasso;->h:Ljava/util/Map;

    .line 191
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    .line 192
    iput-boolean p8, p0, Lcom/squareup/picasso/Picasso;->k:Z

    .line 193
    iput-boolean p9, p0, Lcom/squareup/picasso/Picasso;->l:Z

    .line 194
    new-instance v3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v3, p0, Lcom/squareup/picasso/Picasso;->j:Ljava/lang/ref/ReferenceQueue;

    .line 195
    new-instance v3, Lcom/squareup/picasso/Picasso$b;

    iget-object v4, p0, Lcom/squareup/picasso/Picasso;->j:Ljava/lang/ref/ReferenceQueue;

    sget-object v5, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/squareup/picasso/Picasso$b;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/squareup/picasso/Picasso;->p:Lcom/squareup/picasso/Picasso$b;

    .line 196
    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->p:Lcom/squareup/picasso/Picasso$b;

    invoke-virtual {v3}, Lcom/squareup/picasso/Picasso$b;->start()V

    .line 197
    return-void

    .line 170
    .end local v0    # "allRequestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/x;>;"
    .end local v2    # "extraCount":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 594
    sget-object v0, Lcom/squareup/picasso/Picasso;->c:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_1

    .line 595
    const-class v1, Lcom/squareup/picasso/Picasso;

    monitor-enter v1

    .line 596
    :try_start_0
    sget-object v0, Lcom/squareup/picasso/Picasso;->c:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Lcom/squareup/picasso/Picasso$a;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/Picasso$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$a;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    sput-object v0, Lcom/squareup/picasso/Picasso;->c:Lcom/squareup/picasso/Picasso;

    .line 599
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :cond_1
    sget-object v0, Lcom/squareup/picasso/Picasso;->c:Lcom/squareup/picasso/Picasso;

    return-object v0

    .line 599
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/a;)V
    .locals 5
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Lcom/squareup/picasso/Picasso$LoadedFrom;
    .param p3, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 501
    invoke-virtual {p3}, Lcom/squareup/picasso/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {p3}, Lcom/squareup/picasso/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->h:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_2
    if-eqz p1, :cond_4

    .line 508
    if-nez p2, :cond_3

    .line 509
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LoadedFrom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 511
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/squareup/picasso/a;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 512
    iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_0

    .line 513
    const-string v0, "Main"

    const-string v1, "completed"

    iget-object v2, p3, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    invoke-virtual {v2}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_4
    invoke-virtual {p3}, Lcom/squareup/picasso/a;->a()V

    .line 517
    iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_0

    .line 518
    const-string v0, "Main"

    const-string v1, "errored"

    iget-object v2, p3, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    invoke-virtual {v2}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/squareup/picasso/Picasso;)V
    .locals 3
    .param p0, "picasso"    # Lcom/squareup/picasso/Picasso;

    .prologue
    .line 610
    const-class v1, Lcom/squareup/picasso/Picasso;

    monitor-enter v1

    .line 611
    :try_start_0
    sget-object v0, Lcom/squareup/picasso/Picasso;->c:Lcom/squareup/picasso/Picasso;

    if-eqz v0, :cond_0

    .line 612
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Singleton instance already exists."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 614
    :cond_0
    :try_start_1
    sput-object p0, Lcom/squareup/picasso/Picasso;->c:Lcom/squareup/picasso/Picasso;

    .line 615
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    return-void
.end method

.method static synthetic a(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/picasso/Picasso;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 524
    invoke-static {}, Lcom/squareup/picasso/af;->b()V

    .line 525
    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->h:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a;

    .line 526
    .local v0, "action":Lcom/squareup/picasso/a;
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Lcom/squareup/picasso/a;->b()V

    .line 528
    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->e:Lcom/squareup/picasso/i;

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/i;->b(Lcom/squareup/picasso/a;)V

    .line 530
    :cond_0
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 531
    check-cast v2, Landroid/widget/ImageView;

    .line 532
    .local v2, "targetImageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    .line 533
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/h;

    .line 534
    .local v1, "deferredRequestCreator":Lcom/squareup/picasso/h;
    if-eqz v1, :cond_1

    .line 535
    invoke-virtual {v1}, Lcom/squareup/picasso/h;->a()V

    .line 538
    .end local v1    # "deferredRequestCreator":Lcom/squareup/picasso/h;
    .end local v2    # "targetImageView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method


# virtual methods
.method a(Lcom/squareup/picasso/v;)Lcom/squareup/picasso/v;
    .locals 4
    .param p1, "request"    # Lcom/squareup/picasso/v;

    .prologue
    .line 408
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->o:Lcom/squareup/picasso/Picasso$d;

    invoke-interface {v1, p1}, Lcom/squareup/picasso/Picasso$d;->a(Lcom/squareup/picasso/v;)Lcom/squareup/picasso/v;

    move-result-object v0

    .line 409
    .local v0, "transformed":Lcom/squareup/picasso/v;
    if-nez v0, :cond_0

    .line 410
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request transformer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->o:Lcom/squareup/picasso/Picasso$d;

    .line 411
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned null for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :cond_0
    return-object v0
.end method

.method public a(I)Lcom/squareup/picasso/w;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource ID must not be zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    new-instance v0, Lcom/squareup/picasso/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/squareup/picasso/w;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Lcom/squareup/picasso/w;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 267
    new-instance v0, Lcom/squareup/picasso/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/picasso/w;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public a(Ljava/io/File;)Lcom/squareup/picasso/w;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v0, Lcom/squareup/picasso/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/picasso/w;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    .line 313
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/w;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/squareup/picasso/w;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    new-instance v0, Lcom/squareup/picasso/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/picasso/w;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    .line 293
    :goto_0
    return-object v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/w;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->d(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method a(Landroid/widget/ImageView;Lcom/squareup/picasso/h;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/squareup/picasso/h;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public a(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I

    .prologue
    .line 214
    new-instance v0, Lcom/squareup/picasso/u$c;

    invoke-direct {v0, p1, p2}, Lcom/squareup/picasso/u$c;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Lcom/squareup/picasso/Picasso;->d(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method a(Lcom/squareup/picasso/a;)V
    .locals 2
    .param p1, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 423
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 424
    .local v0, "target":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 426
    invoke-direct {p0, v0}, Lcom/squareup/picasso/Picasso;->d(Ljava/lang/Object;)V

    .line 427
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->h:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->b(Lcom/squareup/picasso/a;)V

    .line 430
    return-void
.end method

.method public a(Lcom/squareup/picasso/ab;)V
    .locals 0
    .param p1, "target"    # Lcom/squareup/picasso/ab;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->d(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method a(Lcom/squareup/picasso/c;)V
    .locals 13
    .param p1, "hunter"    # Lcom/squareup/picasso/c;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 447
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->i()Lcom/squareup/picasso/a;

    move-result-object v9

    .line 448
    .local v9, "single":Lcom/squareup/picasso/a;
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->k()Ljava/util/List;

    move-result-object v5

    .line 450
    .local v5, "joined":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/a;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    move v2, v11

    .line 451
    .local v2, "hasMultiple":Z
    :goto_0
    if-nez v9, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v8, v11

    .line 453
    .local v8, "shouldDeliver":Z
    :cond_1
    if-nez v8, :cond_4

    .line 477
    :cond_2
    :goto_1
    return-void

    .end local v2    # "hasMultiple":Z
    .end local v8    # "shouldDeliver":Z
    :cond_3
    move v2, v8

    .line 450
    goto :goto_0

    .line 457
    .restart local v2    # "hasMultiple":Z
    .restart local v8    # "shouldDeliver":Z
    :cond_4
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->h()Lcom/squareup/picasso/v;

    move-result-object v11

    iget-object v10, v11, Lcom/squareup/picasso/v;->d:Landroid/net/Uri;

    .line 458
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->l()Ljava/lang/Exception;

    move-result-object v0

    .line 459
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->f()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 460
    .local v7, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/squareup/picasso/c;->m()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v1

    .line 462
    .local v1, "from":Lcom/squareup/picasso/Picasso$LoadedFrom;
    if-eqz v9, :cond_5

    .line 463
    invoke-direct {p0, v7, v1, v9}, Lcom/squareup/picasso/Picasso;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/a;)V

    .line 466
    :cond_5
    if-eqz v2, :cond_6

    .line 468
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "n":I
    :goto_2
    if-ge v3, v6, :cond_6

    .line 469
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/picasso/a;

    .line 470
    .local v4, "join":Lcom/squareup/picasso/a;
    invoke-direct {p0, v7, v1, v4}, Lcom/squareup/picasso/Picasso;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/a;)V

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 474
    .end local v3    # "i":I
    .end local v4    # "join":Lcom/squareup/picasso/a;
    .end local v6    # "n":I
    :cond_6
    iget-object v11, p0, Lcom/squareup/picasso/Picasso;->n:Lcom/squareup/picasso/Picasso$c;

    if-eqz v11, :cond_2

    if-eqz v0, :cond_2

    .line 475
    iget-object v11, p0, Lcom/squareup/picasso/Picasso;->n:Lcom/squareup/picasso/Picasso$c;

    invoke-interface {v11, p0, v10, v0}, Lcom/squareup/picasso/Picasso$c;->a(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 224
    invoke-static {}, Lcom/squareup/picasso/af;->b()V

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/squareup/picasso/Picasso;->h:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 226
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/a;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 227
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a;

    .line 228
    .local v0, "action":Lcom/squareup/picasso/a;
    invoke-virtual {v0}, Lcom/squareup/picasso/a;->j()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/squareup/picasso/a;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/squareup/picasso/Picasso;->d(Ljava/lang/Object;)V

    .line 226
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "action":Lcom/squareup/picasso/a;
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "debugging"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->b(Z)V

    .line 347
    return-void
.end method

.method public a()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/d;

    invoke-interface {v1, p1}, Lcom/squareup/picasso/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 438
    .local v0, "cached":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->g:Lcom/squareup/picasso/z;

    invoke-virtual {v1}, Lcom/squareup/picasso/z;->a()V

    .line 443
    :goto_0
    return-object v0

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->g:Lcom/squareup/picasso/z;

    invoke-virtual {v1}, Lcom/squareup/picasso/z;->b()V

    goto :goto_0
.end method

.method b(Lcom/squareup/picasso/a;)V
    .locals 1
    .param p1, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->e:Lcom/squareup/picasso/i;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/a;)V

    .line 434
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->e:Lcom/squareup/picasso/i;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/i;->a(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso;->k:Z

    .line 352
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->k:Z

    return v0
.end method

.method c(Lcom/squareup/picasso/a;)V
    .locals 6
    .param p1, "action"    # Lcom/squareup/picasso/a;

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v1, p1, Lcom/squareup/picasso/a;->d:Z

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/picasso/Picasso;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    :cond_0
    if-eqz v0, :cond_2

    .line 487
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {p0, v0, v1, p1}, Lcom/squareup/picasso/Picasso;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/a;)V

    .line 488
    iget-boolean v1, p0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v1, :cond_1

    .line 489
    const-string v1, "Main"

    const-string v2, "completed"

    iget-object v3, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    invoke-virtual {v3}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/a;)V

    .line 494
    iget-boolean v1, p0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v1, :cond_1

    .line 495
    const-string v1, "Main"

    const-string v2, "resumed"

    iget-object v3, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/v;

    invoke-virtual {v3}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->e:Lcom/squareup/picasso/i;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/i;->b(Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public c(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso;->l:Z

    .line 367
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->l:Z

    return v0
.end method

.method public d()Lcom/squareup/picasso/aa;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->g:Lcom/squareup/picasso/z;

    invoke-virtual {v0}, Lcom/squareup/picasso/z;->f()Lcom/squareup/picasso/aa;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 386
    sget-object v1, Lcom/squareup/picasso/Picasso;->c:Lcom/squareup/picasso/Picasso;

    if-ne p0, v1, :cond_0

    .line 387
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Default singleton instance cannot be shutdown."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_0
    iget-boolean v1, p0, Lcom/squareup/picasso/Picasso;->m:Z

    if-eqz v1, :cond_1

    .line 401
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/d;

    invoke-interface {v1}, Lcom/squareup/picasso/d;->c()V

    .line 393
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->p:Lcom/squareup/picasso/Picasso$b;

    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$b;->a()V

    .line 394
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->g:Lcom/squareup/picasso/z;

    invoke-virtual {v1}, Lcom/squareup/picasso/z;->c()V

    .line 395
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->e:Lcom/squareup/picasso/i;

    invoke-virtual {v1}, Lcom/squareup/picasso/i;->a()V

    .line 396
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/h;

    .line 397
    .local v0, "deferredRequestCreator":Lcom/squareup/picasso/h;
    invoke-virtual {v0}, Lcom/squareup/picasso/h;->a()V

    goto :goto_1

    .line 399
    .end local v0    # "deferredRequestCreator":Lcom/squareup/picasso/h;
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/picasso/Picasso;->m:Z

    goto :goto_0
.end method

.method f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->q:Ljava/util/List;

    return-object v0
.end method
