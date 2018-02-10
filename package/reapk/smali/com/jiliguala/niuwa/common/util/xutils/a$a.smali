.class public Lcom/jiliguala/niuwa/common/util/xutils/a$a;
.super Lcom/jiliguala/niuwa/common/util/xutils/task/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/jiliguala/niuwa/common/util/xutils/task/b",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

.field private h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a;Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)V
    .locals 2
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/xutils/a;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    .local p2, "container":Landroid/view/View;, "TT;"
    .local p5, "callBack":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;-><init>()V

    .line 398
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;->DISK_CACHE:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;

    .line 401
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "args may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->e:Ljava/lang/ref/WeakReference;

    .line 406
    iput-object p5, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;

    .line 407
    iput-object p3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->d:Ljava/lang/String;

    .line 408
    iput-object p4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->g:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    .line 409
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a$a;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    const/4 v3, 0x0

    .line 414
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a;->a(Lcom/jiliguala/niuwa/common/util/xutils/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 415
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a;->b(Lcom/jiliguala/niuwa/common/util/xutils/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->m()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 417
    :try_start_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a;->a(Lcom/jiliguala/niuwa/common/util/xutils/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 418
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a;->c(Lcom/jiliguala/niuwa/common/util/xutils/a;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v2

    .line 440
    :cond_1
    :goto_1
    return-object v0

    .line 424
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    const/4 v0, 0x0

    .line 429
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->m()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 430
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->f([Ljava/lang/Object;)V

    .line 431
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a;->d(Lcom/jiliguala/niuwa/common/util/xutils/a;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->f()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->g:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 435
    :cond_3
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->m()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a;->d(Lcom/jiliguala/niuwa/common/util/xutils/a;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->f()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->g:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v1, v2, v3, p0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/a$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    sget-object v1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;->URI:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;

    goto :goto_1

    .line 424
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 421
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 491
    .local v1, "container":Landroid/view/View;, "TT;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a;->a(Landroid/view/View;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;)Lcom/jiliguala/niuwa/common/util/xutils/a$a;

    move-result-object v0

    .line 493
    .local v0, "bitmapWorkerTask":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    if-ne p0, v0, :cond_0

    .line 497
    .end local v1    # "container":Landroid/view/View;, "TT;"
    :goto_0
    return-object v1

    .restart local v1    # "container":Landroid/view/View;, "TT;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(JJ)V
    .locals 5
    .param p1, "total"    # J
    .param p3, "current"    # J

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    const/4 v3, 0x1

    .line 444
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->f([Ljava/lang/Object;)V

    .line 445
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 472
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a()Landroid/view/View;

    move-result-object v1

    .line 473
    .local v1, "container":Landroid/view/View;, "TT;"
    if-eqz v1, :cond_0

    .line 474
    if-eqz p1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->g:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->h:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->g:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 391
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 484
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a;->a(Lcom/jiliguala/niuwa/common/util/xutils/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a;->a(Lcom/jiliguala/niuwa/common/util/xutils/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 486
    monitor-exit v1

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 391
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 8
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 449
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a()Landroid/view/View;

    move-result-object v1

    .line 453
    .local v1, "container":Landroid/view/View;, "TT;"
    if-eqz v1, :cond_0

    .line 456
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 458
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->g:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)V

    goto :goto_0

    .line 461
    :pswitch_1
    array-length v0, p1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 463
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->f:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->g:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x2

    aget-object v6, p1, v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;JJ)V

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected synthetic c([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 391
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a$a;->a([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
