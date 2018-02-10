.class public Lcom/squareup/picasso/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private final b:Lcom/squareup/picasso/Picasso;

.field private final c:Lcom/squareup/picasso/v$a;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/squareup/picasso/w;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/w;->g:Z

    .line 98
    iput-object v2, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    .line 99
    new-instance v0, Lcom/squareup/picasso/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/squareup/picasso/v$a;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "resourceId"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/w;->g:Z

    .line 89
    iget-boolean v0, p1, Lcom/squareup/picasso/Picasso;->m:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    .line 94
    new-instance v0, Lcom/squareup/picasso/v$a;

    invoke-direct {v0, p2, p3}, Lcom/squareup/picasso/v$a;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    .line 95
    return-void
.end method

.method private a(J)Lcom/squareup/picasso/v;
    .locals 9
    .param p1, "started"    # J

    .prologue
    .line 619
    invoke-static {}, Lcom/squareup/picasso/w;->k()I

    move-result v0

    .line 621
    .local v0, "id":I
    iget-object v4, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v4}, Lcom/squareup/picasso/v$a;->j()Lcom/squareup/picasso/v;

    move-result-object v2

    .line 622
    .local v2, "request":Lcom/squareup/picasso/v;
    iput v0, v2, Lcom/squareup/picasso/v;->a:I

    .line 623
    iput-wide p1, v2, Lcom/squareup/picasso/v;->b:J

    .line 625
    iget-object v4, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v4, Lcom/squareup/picasso/Picasso;->l:Z

    .line 626
    .local v1, "loggingEnabled":Z
    if-eqz v1, :cond_0

    .line 627
    const-string v4, "Main"

    const-string v5, "created"

    invoke-virtual {v2}, Lcom/squareup/picasso/v;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/squareup/picasso/v;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    iget-object v4, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v2}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/v;)Lcom/squareup/picasso/v;

    move-result-object v3

    .line 631
    .local v3, "transformed":Lcom/squareup/picasso/v;
    if-eq v3, v2, :cond_1

    .line 633
    iput v0, v3, Lcom/squareup/picasso/v;->a:I

    .line 634
    iput-wide p1, v3, Lcom/squareup/picasso/v;->b:J

    .line 636
    if-eqz v1, :cond_1

    .line 637
    const-string v4, "Main"

    const-string v5, "changed"

    invoke-virtual {v3}, Lcom/squareup/picasso/v;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_1
    return-object v3
.end method

.method private a(Lcom/squareup/picasso/u;)V
    .locals 3
    .param p1, "action"    # Lcom/squareup/picasso/u;

    .prologue
    .line 645
    iget-boolean v1, p0, Lcom/squareup/picasso/w;->d:Z

    if-nez v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Lcom/squareup/picasso/u;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 648
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/picasso/u;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 658
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 653
    :cond_0
    iget v1, p0, Lcom/squareup/picasso/w;->h:I

    if-eqz v1, :cond_1

    .line 654
    iget v1, p0, Lcom/squareup/picasso/w;->h:I

    invoke-virtual {p1, v1}, Lcom/squareup/picasso/u;->a(I)V

    .line 657
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/a;)V

    goto :goto_0
.end method

.method static synthetic j()I
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/squareup/picasso/w;->k()I

    move-result v0

    return v0
.end method

.method private static k()I
    .locals 5

    .prologue
    .line 55
    invoke-static {}, Lcom/squareup/picasso/af;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    sget v3, Lcom/squareup/picasso/w;->a:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/squareup/picasso/w;->a:I

    .line 72
    .local v1, "id":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_0
    return v3

    .line 59
    .end local v1    # "id":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 60
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 61
    .restart local v1    # "id":Ljava/util/concurrent/atomic/AtomicInteger;
    sget-object v3, Lcom/squareup/picasso/Picasso;->b:Landroid/os/Handler;

    new-instance v4, Lcom/squareup/picasso/w$1;

    invoke-direct {v4, v1, v2}, Lcom/squareup/picasso/w$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Lcom/squareup/picasso/w;->h:I

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/w;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/w;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/squareup/picasso/w;
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/squareup/picasso/w;->h:I

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder resource already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/w;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/w;->g:Z

    .line 117
    return-object p0
.end method

.method public a(F)Lcom/squareup/picasso/w;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 263
    iget-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/v$a;->a(F)Lcom/squareup/picasso/v$a;

    .line 264
    return-object p0
.end method

.method public a(FFF)Lcom/squareup/picasso/w;
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .prologue
    .line 269
    iget-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/picasso/v$a;->a(FFF)Lcom/squareup/picasso/v$a;

    .line 270
    return-object p0
.end method

.method public a(I)Lcom/squareup/picasso/w;
    .locals 2
    .param p1, "placeholderResId"    # I

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/squareup/picasso/w;->g:Z

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already explicitly declared as no placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    if-nez p1, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Placeholder image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/w;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    iput p1, p0, Lcom/squareup/picasso/w;->h:I

    .line 136
    return-object p0
.end method

.method public a(II)Lcom/squareup/picasso/w;
    .locals 4
    .param p1, "targetWidthResId"    # I
    .param p2, "targetHeightResId"    # I

    .prologue
    .line 230
    iget-object v3, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-object v3, v3, Lcom/squareup/picasso/Picasso;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 231
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 232
    .local v2, "targetWidth":I
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 233
    .local v1, "targetHeight":I
    invoke-virtual {p0, v2, v1}, Lcom/squareup/picasso/w;->b(II)Lcom/squareup/picasso/w;

    move-result-object v3

    return-object v3
.end method

.method public a(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/w;
    .locals 1
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/v$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/v$a;

    .line 281
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/w;
    .locals 2
    .param p1, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/squareup/picasso/w;->g:Z

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already explicitly declared as no placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget v0, p0, Lcom/squareup/picasso/w;->h:I

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/w;->j:Landroid/graphics/drawable/Drawable;

    .line 155
    return-object p0
.end method

.method public a(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/w;
    .locals 1
    .param p1, "priority"    # Lcom/squareup/picasso/Picasso$Priority;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/v$a;->a(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/v$a;

    .line 302
    return-object p0
.end method

.method public a(Lcom/squareup/picasso/ad;)Lcom/squareup/picasso/w;
    .locals 1
    .param p1, "transformation"    # Lcom/squareup/picasso/ad;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/v$a;->a(Lcom/squareup/picasso/ad;)Lcom/squareup/picasso/v$a;

    .line 313
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/squareup/picasso/w;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/w;->l:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tag already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/w;->l:Ljava/lang/Object;

    .line 208
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/squareup/picasso/w;
    .locals 1
    .param p1, "stableKey"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/v$a;->a(Ljava/lang/String;)Lcom/squareup/picasso/v$a;

    .line 290
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/w;->a(Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V

    .line 537
    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V
    .locals 22
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "callback"    # Lcom/squareup/picasso/e;

    .prologue
    .line 549
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 550
    .local v20, "started":J
    invoke-static {}, Lcom/squareup/picasso/af;->b()V

    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Target must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 556
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v4}, Lcom/squareup/picasso/v$a;->a()Z

    move-result v4

    if-nez v4, :cond_2

    .line 557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V

    .line 558
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/squareup/picasso/w;->g:Z

    if-eqz v4, :cond_1

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/squareup/picasso/w;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/squareup/picasso/s;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 607
    :cond_1
    :goto_0
    return-void

    .line 564
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/squareup/picasso/w;->f:Z

    if-eqz v4, :cond_7

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v4}, Lcom/squareup/picasso/v$a;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 566
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Fit cannot be used with resize."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 568
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v19

    .line 569
    .local v19, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v18

    .line 570
    .local v18, "height":I
    if-eqz v19, :cond_4

    if-nez v18, :cond_6

    .line 571
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/squareup/picasso/w;->g:Z

    if-eqz v4, :cond_5

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/squareup/picasso/w;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/squareup/picasso/s;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 574
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    new-instance v5, Lcom/squareup/picasso/h;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v5, v0, v1, v2}, Lcom/squareup/picasso/h;-><init>(Lcom/squareup/picasso/w;Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;Lcom/squareup/picasso/h;)V

    goto :goto_0

    .line 577
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/squareup/picasso/v$a;->a(II)Lcom/squareup/picasso/v$a;

    .line 580
    .end local v18    # "height":I
    .end local v19    # "width":I
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/squareup/picasso/w;->a(J)Lcom/squareup/picasso/v;

    move-result-object v10

    .line 581
    .local v10, "request":Lcom/squareup/picasso/v;
    invoke-static {v10}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/v;)Ljava/lang/String;

    move-result-object v15

    .line 583
    .local v15, "requestKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/squareup/picasso/w;->d:Z

    if-nez v4, :cond_9

    .line 584
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v15}, Lcom/squareup/picasso/Picasso;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 585
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_9

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-object v5, v4, Lcom/squareup/picasso/Picasso;->d:Landroid/content/Context;

    sget-object v7, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/squareup/picasso/w;->e:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v9, v4, Lcom/squareup/picasso/Picasso;->k:Z

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/squareup/picasso/s;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 588
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, v4, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v4, :cond_8

    .line 589
    const-string v4, "Main"

    const-string v5, "completed"

    invoke-virtual {v10}, Lcom/squareup/picasso/v;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "from "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v5, v8, v9}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_8
    if-eqz p2, :cond_1

    .line 592
    invoke-interface/range {p2 .. p2}, Lcom/squareup/picasso/e;->a()V

    goto/16 :goto_0

    .line 598
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/squareup/picasso/w;->g:Z

    if-eqz v4, :cond_a

    .line 599
    invoke-direct/range {p0 .. p0}, Lcom/squareup/picasso/w;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/squareup/picasso/s;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 602
    :cond_a
    new-instance v7, Lcom/squareup/picasso/m;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/squareup/picasso/w;->d:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/squareup/picasso/w;->e:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/squareup/picasso/w;->i:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/picasso/w;->k:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/picasso/w;->l:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move-object/from16 v17, p2

    invoke-direct/range {v7 .. v17}, Lcom/squareup/picasso/m;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/v;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/picasso/e;)V

    .line 606
    .local v7, "action":Lcom/squareup/picasso/a;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v7}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/a;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/widget/RemoteViews;IILandroid/app/Notification;)V
    .locals 14
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "notificationId"    # I
    .param p4, "notification"    # Landroid/app/Notification;

    .prologue
    .line 470
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 471
    .local v12, "started":J
    invoke-static {}, Lcom/squareup/picasso/af;->b()V

    .line 473
    if-nez p1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "RemoteViews must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_0
    if-nez p4, :cond_1

    .line 477
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Notification must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_1
    iget-boolean v1, p0, Lcom/squareup/picasso/w;->f:Z

    if-eqz v1, :cond_2

    .line 480
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Fit cannot be used with RemoteViews."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/w;->j:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/squareup/picasso/w;->h:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/squareup/picasso/w;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 483
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot use placeholder or error drawables with remote views."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_4
    invoke-direct {p0, v12, v13}, Lcom/squareup/picasso/w;->a(J)Lcom/squareup/picasso/v;

    move-result-object v2

    .line 488
    .local v2, "request":Lcom/squareup/picasso/v;
    invoke-static {v2}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/v;)Ljava/lang/String;

    move-result-object v9

    .line 490
    .local v9, "key":Ljava/lang/String;
    new-instance v0, Lcom/squareup/picasso/u$b;

    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v7, p0, Lcom/squareup/picasso/w;->d:Z

    iget v8, p0, Lcom/squareup/picasso/w;->i:I

    iget-object v10, p0, Lcom/squareup/picasso/w;->l:Ljava/lang/Object;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v10}, Lcom/squareup/picasso/u$b;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/v;Landroid/widget/RemoteViews;IILandroid/app/Notification;ZILjava/lang/String;Ljava/lang/Object;)V

    .line 494
    .local v0, "action":Lcom/squareup/picasso/u;
    invoke-direct {p0, v0}, Lcom/squareup/picasso/w;->a(Lcom/squareup/picasso/u;)V

    .line 495
    return-void
.end method

.method public a(Landroid/widget/RemoteViews;I[I)V
    .locals 12
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 502
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 503
    .local v10, "started":J
    invoke-static {}, Lcom/squareup/picasso/af;->b()V

    .line 505
    if-nez p1, :cond_0

    .line 506
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "remoteViews must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_0
    if-nez p3, :cond_1

    .line 509
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "appWidgetIds must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_1
    iget-boolean v1, p0, Lcom/squareup/picasso/w;->f:Z

    if-eqz v1, :cond_2

    .line 512
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Fit cannot be used with remote views."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/w;->j:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/squareup/picasso/w;->h:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/squareup/picasso/w;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 515
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot use placeholder or error drawables with remote views."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_4
    invoke-direct {p0, v10, v11}, Lcom/squareup/picasso/w;->a(J)Lcom/squareup/picasso/v;

    move-result-object v2

    .line 520
    .local v2, "request":Lcom/squareup/picasso/v;
    invoke-static {v2}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/v;)Ljava/lang/String;

    move-result-object v8

    .line 522
    .local v8, "key":Ljava/lang/String;
    new-instance v0, Lcom/squareup/picasso/u$a;

    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v6, p0, Lcom/squareup/picasso/w;->d:Z

    iget v7, p0, Lcom/squareup/picasso/w;->i:I

    iget-object v9, p0, Lcom/squareup/picasso/w;->l:Ljava/lang/Object;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/squareup/picasso/u$a;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/v;Landroid/widget/RemoteViews;I[IZILjava/lang/String;Ljava/lang/Object;)V

    .line 526
    .local v0, "action":Lcom/squareup/picasso/u;
    invoke-direct {p0, v0}, Lcom/squareup/picasso/w;->a(Lcom/squareup/picasso/u;)V

    .line 527
    return-void
.end method

.method public a(Lcom/squareup/picasso/ab;)V
    .locals 12
    .param p1, "target"    # Lcom/squareup/picasso/ab;

    .prologue
    const/4 v1, 0x0

    .line 428
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 429
    .local v10, "started":J
    invoke-static {}, Lcom/squareup/picasso/af;->b()V

    .line 431
    if-nez p1, :cond_0

    .line 432
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_0
    iget-boolean v2, p0, Lcom/squareup/picasso/w;->f:Z

    if-eqz v2, :cond_1

    .line 435
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with a Target."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v2}, Lcom/squareup/picasso/v$a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 439
    iget-object v2, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v2, p1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/ab;)V

    .line 440
    iget-boolean v2, p0, Lcom/squareup/picasso/w;->g:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/squareup/picasso/w;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    invoke-interface {p1, v1}, Lcom/squareup/picasso/ab;->b(Landroid/graphics/drawable/Drawable;)V

    .line 462
    :goto_0
    return-void

    .line 444
    :cond_3
    invoke-direct {p0, v10, v11}, Lcom/squareup/picasso/w;->a(J)Lcom/squareup/picasso/v;

    move-result-object v3

    .line 445
    .local v3, "request":Lcom/squareup/picasso/v;
    invoke-static {v3}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/v;)Ljava/lang/String;

    move-result-object v7

    .line 447
    .local v7, "requestKey":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/squareup/picasso/w;->d:Z

    if-nez v2, :cond_4

    .line 448
    iget-object v2, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v2, v7}, Lcom/squareup/picasso/Picasso;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 449
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_4

    .line 450
    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/ab;)V

    .line 451
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-interface {p1, v9, v1}, Lcom/squareup/picasso/ab;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    goto :goto_0

    .line 456
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-boolean v2, p0, Lcom/squareup/picasso/w;->g:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/squareup/picasso/w;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_5
    invoke-interface {p1, v1}, Lcom/squareup/picasso/ab;->b(Landroid/graphics/drawable/Drawable;)V

    .line 458
    new-instance v0, Lcom/squareup/picasso/ac;

    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, p0, Lcom/squareup/picasso/w;->d:Z

    iget v5, p0, Lcom/squareup/picasso/w;->i:I

    iget-object v6, p0, Lcom/squareup/picasso/w;->k:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/squareup/picasso/w;->l:Ljava/lang/Object;

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/squareup/picasso/ac;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/ab;Lcom/squareup/picasso/v;ZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    .local v0, "action":Lcom/squareup/picasso/a;
    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/a;)V

    goto :goto_0
.end method

.method public b()Lcom/squareup/picasso/w;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/w;->f:Z

    .line 219
    return-object p0
.end method

.method public b(I)Lcom/squareup/picasso/w;
    .locals 2
    .param p1, "errorResId"    # I

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/w;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    iput p1, p0, Lcom/squareup/picasso/w;->i:I

    .line 167
    return-object p0
.end method

.method public b(II)Lcom/squareup/picasso/w;
    .locals 1
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/v$a;->a(II)Lcom/squareup/picasso/v$a;

    .line 239
    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/w;
    .locals 2
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error image may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget v0, p0, Lcom/squareup/picasso/w;->i:I

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/w;->k:Landroid/graphics/drawable/Drawable;

    .line 179
    return-object p0
.end method

.method c()Lcom/squareup/picasso/w;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/w;->f:Z

    .line 225
    return-object p0
.end method

.method public d()Lcom/squareup/picasso/w;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v0}, Lcom/squareup/picasso/v$a;->e()Lcom/squareup/picasso/v$a;

    .line 249
    return-object p0
.end method

.method public e()Lcom/squareup/picasso/w;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v0}, Lcom/squareup/picasso/v$a;->g()Lcom/squareup/picasso/v$a;

    .line 258
    return-object p0
.end method

.method public f()Lcom/squareup/picasso/w;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/w;->d:Z

    .line 323
    return-object p0
.end method

.method public g()Lcom/squareup/picasso/w;
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/w;->e:Z

    .line 329
    return-object p0
.end method

.method public h()Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 340
    .local v6, "started":J
    invoke-static {}, Lcom/squareup/picasso/af;->a()V

    .line 342
    iget-boolean v1, p0, Lcom/squareup/picasso/w;->f:Z

    if-eqz v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Fit cannot be used with get."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v1}, Lcom/squareup/picasso/v$a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    const/4 v1, 0x0

    .line 353
    :goto_0
    return-object v1

    .line 349
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/squareup/picasso/w;->a(J)Lcom/squareup/picasso/v;

    move-result-object v2

    .line 350
    .local v2, "finalData":Lcom/squareup/picasso/v;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "key":Ljava/lang/String;
    new-instance v0, Lcom/squareup/picasso/l;

    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, p0, Lcom/squareup/picasso/w;->d:Z

    iget-object v5, p0, Lcom/squareup/picasso/w;->l:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/l;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/v;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 353
    .local v0, "action":Lcom/squareup/picasso/a;
    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-object v3, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-object v3, v3, Lcom/squareup/picasso/Picasso;->e:Lcom/squareup/picasso/i;

    iget-object v5, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-object v5, v5, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/d;

    iget-object v8, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-object v8, v8, Lcom/squareup/picasso/Picasso;->g:Lcom/squareup/picasso/z;

    invoke-static {v1, v3, v5, v8, v0}, Lcom/squareup/picasso/c;->a(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/z;Lcom/squareup/picasso/a;)Lcom/squareup/picasso/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/c;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public i()V
    .locals 8

    .prologue
    .line 363
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 365
    .local v6, "started":J
    iget-boolean v1, p0, Lcom/squareup/picasso/w;->f:Z

    if-eqz v1, :cond_0

    .line 366
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Fit cannot be used with fetch."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v1}, Lcom/squareup/picasso/v$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    invoke-virtual {v1}, Lcom/squareup/picasso/v$a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/squareup/picasso/w;->c:Lcom/squareup/picasso/v$a;

    sget-object v3, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/v$a;->a(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/v$a;

    .line 374
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/squareup/picasso/w;->a(J)Lcom/squareup/picasso/v;

    move-result-object v2

    .line 375
    .local v2, "request":Lcom/squareup/picasso/v;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/v;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "key":Ljava/lang/String;
    new-instance v0, Lcom/squareup/picasso/j;

    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, p0, Lcom/squareup/picasso/w;->d:Z

    iget-object v5, p0, Lcom/squareup/picasso/w;->l:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/j;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/v;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 378
    .local v0, "action":Lcom/squareup/picasso/a;
    iget-object v1, p0, Lcom/squareup/picasso/w;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->b(Lcom/squareup/picasso/a;)V

    .line 380
    .end local v0    # "action":Lcom/squareup/picasso/a;
    .end local v2    # "request":Lcom/squareup/picasso/v;
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method
