.class Lcom/bumptech/glide/load/engine/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/bumptech/glide/load/engine/e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/e;)V
    .locals 0
    .param p1, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "sourceService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "listener"    # Lcom/bumptech/glide/load/engine/e;

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c$a;->a:Ljava/util/concurrent/ExecutorService;

    .line 375
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/c$a;->b:Ljava/util/concurrent/ExecutorService;

    .line 376
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/c$a;->c:Lcom/bumptech/glide/load/engine/e;

    .line 377
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/d;
    .locals 6
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .param p2, "isMemoryCacheable"    # Z

    .prologue
    .line 380
    new-instance v0, Lcom/bumptech/glide/load/engine/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c$a;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c$a;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/c$a;->c:Lcom/bumptech/glide/load/engine/e;

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/e;)V

    return-object v0
.end method
