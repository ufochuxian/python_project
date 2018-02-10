.class final Lrx/internal/util/InternalObservableUtils$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c/o",
        "<",
        "Lrx/d/c",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/TimeUnit;

.field private final c:Lrx/h;

.field private final d:I

.field private final e:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/e;IJLjava/util/concurrent/TimeUnit;Lrx/h;)V
    .locals 1
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$m;, "Lrx/internal/util/InternalObservableUtils$m<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-wide p3, p0, Lrx/internal/util/InternalObservableUtils$m;->a:J

    .line 346
    iput-object p5, p0, Lrx/internal/util/InternalObservableUtils$m;->b:Ljava/util/concurrent/TimeUnit;

    .line 347
    iput-object p6, p0, Lrx/internal/util/InternalObservableUtils$m;->c:Lrx/h;

    .line 348
    iput p2, p0, Lrx/internal/util/InternalObservableUtils$m;->d:I

    .line 349
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$m;->e:Lrx/e;

    .line 350
    return-void
.end method


# virtual methods
.method public a()Lrx/d/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$m;, "Lrx/internal/util/InternalObservableUtils$m<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$m;->e:Lrx/e;

    iget v1, p0, Lrx/internal/util/InternalObservableUtils$m;->d:I

    iget-wide v2, p0, Lrx/internal/util/InternalObservableUtils$m;->a:J

    iget-object v4, p0, Lrx/internal/util/InternalObservableUtils$m;->b:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lrx/internal/util/InternalObservableUtils$m;->c:Lrx/h;

    invoke-virtual/range {v0 .. v5}, Lrx/e;->a(IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$m;, "Lrx/internal/util/InternalObservableUtils$m<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$m;->a()Lrx/d/c;

    move-result-object v0

    return-object v0
.end method
