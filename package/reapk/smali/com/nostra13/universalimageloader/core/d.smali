.class public Lcom/nostra13/universalimageloader/core/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/d$1;,
        Lcom/nostra13/universalimageloader/core/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

.field private static final b:Ljava/lang/String; = "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

.field public static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String; = "Initialize ImageLoader with configuration"

.field static final e:Ljava/lang/String; = "Destroy ImageLoader"

.field static final f:Ljava/lang/String; = "Load image from memory cache [%s]"

.field private static final g:Ljava/lang/String; = "ImageLoader must be init with configuration before using"

.field private static final h:Ljava/lang/String; = "ImageLoader configuration can not be initialized with null"

.field private static volatile l:Lcom/nostra13/universalimageloader/core/d;


# instance fields
.field private i:Lcom/nostra13/universalimageloader/core/e;

.field private j:Lcom/nostra13/universalimageloader/core/f;

.field private k:Lcom/nostra13/universalimageloader/core/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/nostra13/universalimageloader/core/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/core/d;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/nostra13/universalimageloader/core/d/d;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/d/d;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/d/a;

    .line 82
    return-void
.end method

.method private static a(Lcom/nostra13/universalimageloader/core/c;)Landroid/os/Handler;
    .locals 3
    .param p0, "options"    # Lcom/nostra13/universalimageloader/core/c;

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/c;->r()Landroid/os/Handler;

    move-result-object v0

    .line 786
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/c;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    const/4 v0, 0x0

    .line 791
    :cond_0
    :goto_0
    return-object v0

    .line 788
    :cond_1
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 789
    new-instance v0, Landroid/os/Handler;

    .end local v0    # "handler":Landroid/os/Handler;
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    return-void
.end method

.method public static b()Lcom/nostra13/universalimageloader/core/d;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/nostra13/universalimageloader/core/d;->l:Lcom/nostra13/universalimageloader/core/d;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/nostra13/universalimageloader/core/d;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/nostra13/universalimageloader/core/d;->l:Lcom/nostra13/universalimageloader/core/d;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/nostra13/universalimageloader/core/d;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/d;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/core/d;->l:Lcom/nostra13/universalimageloader/core/d;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/d;->l:Lcom/nostra13/universalimageloader/core/d;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, p1, v0, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/c;

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/c;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;

    .prologue
    .line 596
    if-nez p3, :cond_0

    .line 597
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object p3, v1, Lcom/nostra13/universalimageloader/core/e;->r:Lcom/nostra13/universalimageloader/core/c;

    .line 599
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    invoke-virtual {v1, p3}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/c;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->f(Z)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object p3

    .line 601
    new-instance v0, Lcom/nostra13/universalimageloader/core/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/d$a;-><init>(Lcom/nostra13/universalimageloader/core/d$1;)V

    .line 602
    .local v0, "listener":Lcom/nostra13/universalimageloader/core/d$a;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 603
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d$a;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/c;

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    new-instance v1, Lcom/nostra13/universalimageloader/core/c/b;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/c/b;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/c/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/nostra13/universalimageloader/core/c/a;)Ljava/lang/String;
    .locals 1
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/c/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 0
    .param p1, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;

    .prologue
    .line 619
    if-nez p1, :cond_0

    new-instance p1, Lcom/nostra13/universalimageloader/core/d/d;

    .end local p1    # "listener":Lcom/nostra13/universalimageloader/core/d/a;
    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/d/d;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/d/a;

    .line 620
    return-void
.end method

.method public declared-synchronized a(Lcom/nostra13/universalimageloader/core/e;)V
    .locals 2
    .param p1, "configuration"    # Lcom/nostra13/universalimageloader/core/e;

    .prologue
    .line 93
    monitor-enter p0

    if-nez p1, :cond_0

    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    if-nez v0, :cond_1

    .line 97
    const-string v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lcom/nostra13/universalimageloader/core/f;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/f;-><init>(Lcom/nostra13/universalimageloader/core/e;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    .line 99
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_1
    :try_start_2
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    .line 316
    new-instance v2, Lcom/nostra13/universalimageloader/core/c/b;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/c/b;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 317
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/c;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/c;

    .prologue
    const/4 v3, 0x0

    .line 331
    new-instance v2, Lcom/nostra13/universalimageloader/core/c/b;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/c/b;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 332
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;

    .prologue
    const/4 v4, 0x0

    .line 348
    new-instance v2, Lcom/nostra13/universalimageloader/core/c/b;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/c/b;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 349
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;

    .prologue
    .line 385
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 386
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/d/b;

    .prologue
    .line 410
    new-instance v2, Lcom/nostra13/universalimageloader/core/c/b;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/c/b;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 411
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;

    .prologue
    const/4 v3, 0x0

    .line 365
    new-instance v2, Lcom/nostra13/universalimageloader/core/c/b;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/c/b;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 366
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/c;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;

    .prologue
    .line 489
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 490
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/c;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/d/b;

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->a()V

    .line 520
    if-nez p2, :cond_0

    .line 521
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/e;->a()Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object p2

    .line 523
    :cond_0
    if-nez p3, :cond_1

    .line 524
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object p3, v0, Lcom/nostra13/universalimageloader/core/e;->r:Lcom/nostra13/universalimageloader/core/c;

    .line 527
    :cond_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/c/c;

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v2, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/c/c;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    .local v2, "imageAware":Lcom/nostra13/universalimageloader/core/c/c;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 528
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 529
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/c;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;

    .prologue
    const/4 v3, 0x0

    .line 445
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 446
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;

    .prologue
    const/4 v3, 0x0

    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 127
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;

    .prologue
    const/4 v4, 0x0

    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 163
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V
    .locals 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p4, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/c;
    .param p5, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;
    .param p6, "progressListener"    # Lcom/nostra13/universalimageloader/core/d/b;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->a()V

    .line 237
    if-nez p2, :cond_0

    .line 238
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_0
    if-nez p5, :cond_1

    .line 241
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/d/a;

    move-object/from16 p5, v0

    .line 243
    :cond_1
    if-nez p3, :cond_2

    .line 244
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object p3, v2, Lcom/nostra13/universalimageloader/core/e;->r:Lcom/nostra13/universalimageloader/core/c;

    .line 247
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v2, p2}, Lcom/nostra13/universalimageloader/core/f;->b(Lcom/nostra13/universalimageloader/core/c/a;)V

    .line 249
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, p1, v2}, Lcom/nostra13/universalimageloader/core/d/a;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 250
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/c;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/e;->a:Landroid/content/res/Resources;

    invoke-virtual {p3, v2}, Lcom/nostra13/universalimageloader/core/c;->b(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 255
    :goto_0
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, p1, v2, v3}, Lcom/nostra13/universalimageloader/core/d/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 302
    :goto_1
    return-void

    .line 253
    :cond_3
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 259
    :cond_4
    if-nez p4, :cond_5

    .line 260
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/e;->a()Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/nostra13/universalimageloader/b/b;->a(Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/c;)Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object p4

    .line 262
    :cond_5
    move-object/from16 v0, p4

    invoke-static {p1, v0}, Lcom/nostra13/universalimageloader/b/e;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "memoryCacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v2, p2, v5}, Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/c/a;Ljava/lang/String;)V

    .line 265
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, p1, v2}, Lcom/nostra13/universalimageloader/core/d/a;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 267
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/e;->n:Lcom/nostra13/universalimageloader/a/b/c;

    invoke-interface {v2, v5}, Lcom/nostra13/universalimageloader/a/b/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 268
    .local v10, "bmp":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 269
    const-string v2, "Load image from memory cache [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/c;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 272
    new-instance v1, Lcom/nostra13/universalimageloader/core/g;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v2, p1}, Lcom/nostra13/universalimageloader/core/f;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/nostra13/universalimageloader/core/g;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/c;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 274
    .local v1, "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/g;
    new-instance v11, Lcom/nostra13/universalimageloader/core/i;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-static {p3}, Lcom/nostra13/universalimageloader/core/d;->a(Lcom/nostra13/universalimageloader/core/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v11, v2, v10, v1, v3}, Lcom/nostra13/universalimageloader/core/i;-><init>(Lcom/nostra13/universalimageloader/core/f;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/g;Landroid/os/Handler;)V

    .line 276
    .local v11, "displayTask":Lcom/nostra13/universalimageloader/core/i;
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/c;->s()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 277
    invoke-virtual {v11}, Lcom/nostra13/universalimageloader/core/i;->run()V

    goto :goto_1

    .line 279
    :cond_6
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v2, v11}, Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/i;)V

    goto :goto_1

    .line 282
    .end local v1    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/g;
    .end local v11    # "displayTask":Lcom/nostra13/universalimageloader/core/i;
    :cond_7
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/c;->q()Lcom/nostra13/universalimageloader/core/b/a;

    move-result-object v2

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v2, v10, p2, v3}, Lcom/nostra13/universalimageloader/core/b/a;->a(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 283
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, p1, v2, v10}, Lcom/nostra13/universalimageloader/core/d/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 286
    :cond_8
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/c;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 287
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/e;->a:Landroid/content/res/Resources;

    invoke-virtual {p3, v2}, Lcom/nostra13/universalimageloader/core/c;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 292
    :cond_9
    :goto_2
    new-instance v1, Lcom/nostra13/universalimageloader/core/g;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v2, p1}, Lcom/nostra13/universalimageloader/core/f;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/nostra13/universalimageloader/core/g;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/c;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 294
    .restart local v1    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/g;
    new-instance v11, Lcom/nostra13/universalimageloader/core/h;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-static {p3}, Lcom/nostra13/universalimageloader/core/d;->a(Lcom/nostra13/universalimageloader/core/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v11, v2, v1, v3}, Lcom/nostra13/universalimageloader/core/h;-><init>(Lcom/nostra13/universalimageloader/core/f;Lcom/nostra13/universalimageloader/core/g;Landroid/os/Handler;)V

    .line 296
    .local v11, "displayTask":Lcom/nostra13/universalimageloader/core/h;
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/c;->s()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 297
    invoke-virtual {v11}, Lcom/nostra13/universalimageloader/core/h;->run()V

    goto/16 :goto_1

    .line 288
    .end local v1    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/g;
    .end local v11    # "displayTask":Lcom/nostra13/universalimageloader/core/h;
    :cond_a
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/c;->g()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 289
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    .line 299
    .restart local v1    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/g;
    .restart local v11    # "displayTask":Lcom/nostra13/universalimageloader/core/h;
    :cond_b
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v2, v11}, Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/h;)V

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;

    .prologue
    .line 183
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/d/b;

    .prologue
    .line 209
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 210
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;

    .prologue
    const/4 v3, 0x0

    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 145
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;

    .prologue
    const/4 v2, 0x0

    .line 464
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 465
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nostra13/universalimageloader/core/d/a;

    .prologue
    const/4 v2, 0x0

    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;Lcom/nostra13/universalimageloader/core/d/b;)V

    .line 426
    return-void
.end method

.method public b(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    new-instance v1, Lcom/nostra13/universalimageloader/core/c/b;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/c/b;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/f;->b(Lcom/nostra13/universalimageloader/core/c/a;)V

    .line 719
    return-void
.end method

.method public b(Lcom/nostra13/universalimageloader/core/c/a;)V
    .locals 1
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/c/a;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/f;->b(Lcom/nostra13/universalimageloader/core/c/a;)V

    .line 709
    return-void
.end method

.method public c(Z)V
    .locals 1
    .param p1, "denyNetworkDownloads"    # Z

    .prologue
    .line 732
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/f;->a(Z)V

    .line 733
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/nostra13/universalimageloader/a/b/c;
    .locals 1

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->a()V

    .line 629
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/e;->n:Lcom/nostra13/universalimageloader/a/b/c;

    return-object v0
.end method

.method public d(Z)V
    .locals 1
    .param p1, "handleSlowNetwork"    # Z

    .prologue
    .line 743
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/f;->b(Z)V

    .line 744
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->a()V

    .line 639
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/e;->n:Lcom/nostra13/universalimageloader/a/b/c;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/a/b/c;->b()V

    .line 640
    return-void
.end method

.method public f()Lcom/nostra13/universalimageloader/a/a/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/d;->g()Lcom/nostra13/universalimageloader/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/nostra13/universalimageloader/a/a/a;
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->a()V

    .line 660
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/e;->o:Lcom/nostra13/universalimageloader/a/a/a;

    return-object v0
.end method

.method public h()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/d;->i()V

    .line 672
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->a()V

    .line 681
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/e;->o:Lcom/nostra13/universalimageloader/a/a/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/a/a/a;->c()V

    .line 682
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/f;->a()V

    .line 753
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/f;->b()V

    .line 758
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/f;->c()V

    .line 769
    return-void
.end method

.method public m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 777
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    if-eqz v0, :cond_0

    const-string v0, "Destroy ImageLoader"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/d;->l()V

    .line 779
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/e;->o:Lcom/nostra13/universalimageloader/a/a/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/a/a/a;->b()V

    .line 780
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/f;

    .line 781
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->i:Lcom/nostra13/universalimageloader/core/e;

    .line 782
    return-void
.end method
