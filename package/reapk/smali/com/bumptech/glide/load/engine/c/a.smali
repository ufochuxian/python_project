.class final Lcom/bumptech/glide/load/engine/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/c/a$1;,
        Lcom/bumptech/glide/load/engine/c/a$a;,
        Lcom/bumptech/glide/load/engine/c/a$b;
    }
.end annotation


# static fields
.field static final a:J = 0x20L

.field static final b:J = 0x28L

.field static final c:I = 0x4

.field static final d:J

.field private static final e:Ljava/lang/String; = "PreFillRunner"

.field private static final f:Lcom/bumptech/glide/load/engine/c/a$a;


# instance fields
.field private final g:Lcom/bumptech/glide/load/engine/a/c;

.field private final h:Lcom/bumptech/glide/load/engine/b/i;

.field private final i:Lcom/bumptech/glide/load/engine/c/c;

.field private final j:Lcom/bumptech/glide/load/engine/c/a$a;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/engine/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/os/Handler;

.field private m:J

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/bumptech/glide/load/engine/c/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/c/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/c/a;->f:Lcom/bumptech/glide/load/engine/c/a$a;

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/engine/c/a;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/c/c;)V
    .locals 6
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p2, "memoryCache"    # Lcom/bumptech/glide/load/engine/b/i;
    .param p3, "allocationOrder"    # Lcom/bumptech/glide/load/engine/c/c;

    .prologue
    .line 67
    sget-object v4, Lcom/bumptech/glide/load/engine/c/a;->f:Lcom/bumptech/glide/load/engine/c/a$a;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/c/a;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/c/c;Lcom/bumptech/glide/load/engine/c/a$a;Landroid/os/Handler;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/c/c;Lcom/bumptech/glide/load/engine/c/a$a;Landroid/os/Handler;)V
    .locals 2
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p2, "memoryCache"    # Lcom/bumptech/glide/load/engine/b/i;
    .param p3, "allocationOrder"    # Lcom/bumptech/glide/load/engine/c/c;
    .param p4, "clock"    # Lcom/bumptech/glide/load/engine/c/a$a;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->k:Ljava/util/Set;

    .line 63
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/c/a;->m:J

    .line 73
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    .line 74
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/c/a;->h:Lcom/bumptech/glide/load/engine/b/i;

    .line 75
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/c/a;->i:Lcom/bumptech/glide/load/engine/c/c;

    .line 76
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/c/a;->j:Lcom/bumptech/glide/load/engine/c/a$a;

    .line 77
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/c/a;->l:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/c/d;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "toAllocate"    # Lcom/bumptech/glide/load/engine/c/d;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c/a;->k:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/c/d;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/c/d;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/c/d;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/a/c;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .local v0, "fromPool":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/a/c;->a(Landroid/graphics/Bitmap;)Z

    .line 131
    .end local v0    # "fromPool":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/engine/a/c;->a(Landroid/graphics/Bitmap;)Z

    .line 132
    return-void
.end method

.method private a(J)Z
    .locals 5
    .param p1, "startTimeMs"    # J

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->j:Lcom/bumptech/glide/load/engine/c/a$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c/a$a;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 7

    .prologue
    .line 89
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c/a;->j:Lcom/bumptech/glide/load/engine/c/a$a;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/c/a$a;->a()J

    move-result-wide v2

    .line 90
    .local v2, "start":J
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c/a;->i:Lcom/bumptech/glide/load/engine/c/c;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/c/c;->c()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/load/engine/c/a;->a(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 91
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c/a;->i:Lcom/bumptech/glide/load/engine/c/c;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/c/c;->a()Lcom/bumptech/glide/load/engine/c/d;

    move-result-object v1

    .line 92
    .local v1, "toAllocate":Lcom/bumptech/glide/load/engine/c/d;
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/c/d;->a()I

    move-result v4

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/c/d;->b()I

    move-result v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/c/d;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c/a;->c()I

    move-result v4

    invoke-static {v0}, Lcom/bumptech/glide/i/i;->b(Landroid/graphics/Bitmap;)I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 98
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c/a;->h:Lcom/bumptech/glide/load/engine/b/i;

    new-instance v5, Lcom/bumptech/glide/load/engine/c/a$b;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/engine/c/a$b;-><init>(Lcom/bumptech/glide/load/engine/c/a$1;)V

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/c/a;->g:Lcom/bumptech/glide/load/engine/a/c;

    invoke-static {v0, v6}, Lcom/bumptech/glide/load/resource/bitmap/d;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/load/resource/bitmap/d;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/bumptech/glide/load/engine/b/i;->b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;

    .line 103
    :goto_1
    const-string v4, "PreFillRunner"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    const-string v4, "PreFillRunner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/c/d;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/c/d;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/c/d;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/bumptech/glide/i/i;->b(Landroid/graphics/Bitmap;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 100
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/engine/c/a;->a(Lcom/bumptech/glide/load/engine/c/d;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 109
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "toAllocate":Lcom/bumptech/glide/load/engine/c/d;
    :cond_2
    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/c/a;->n:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c/a;->i:Lcom/bumptech/glide/load/engine/c/c;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/c/c;->c()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private c()I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->h:Lcom/bumptech/glide/load/engine/b/i;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/b/i;->b()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c/a;->h:Lcom/bumptech/glide/load/engine/b/i;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/b/i;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private d()J
    .locals 6

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/c/a;->m:J

    .line 143
    .local v0, "result":J
    iget-wide v2, p0, Lcom/bumptech/glide/load/engine/c/a;->m:J

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    sget-wide v4, Lcom/bumptech/glide/load/engine/c/a;->d:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/c/a;->m:J

    .line 144
    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/c/a;->n:Z

    .line 82
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a;->l:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c/a;->d()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_0
    return-void
.end method
