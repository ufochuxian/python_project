.class Lcom/bumptech/glide/load/engine/c$e;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/bumptech/glide/load/engine/h",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/h;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/h",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/bumptech/glide/load/engine/h",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p2, "r":Lcom/bumptech/glide/load/engine/h;, "Lcom/bumptech/glide/load/engine/h<*>;"
    .local p3, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Lcom/bumptech/glide/load/engine/h<*>;>;"
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 340
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c$e;->a:Lcom/bumptech/glide/load/b;

    .line 341
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/c$e;)Lcom/bumptech/glide/load/b;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/c$e;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c$e;->a:Lcom/bumptech/glide/load/b;

    return-object v0
.end method
