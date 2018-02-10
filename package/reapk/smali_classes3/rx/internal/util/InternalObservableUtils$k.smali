.class final Lrx/internal/util/InternalObservableUtils$k;
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
    name = "k"
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
.field private final a:Ljava/util/concurrent/TimeUnit;

.field private final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:J

.field private final d:Lrx/h;


# direct methods
.method constructor <init>(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$k;, "Lrx/internal/util/InternalObservableUtils$k<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p4, p0, Lrx/internal/util/InternalObservableUtils$k;->a:Ljava/util/concurrent/TimeUnit;

    .line 307
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$k;->b:Lrx/e;

    .line 308
    iput-wide p2, p0, Lrx/internal/util/InternalObservableUtils$k;->c:J

    .line 309
    iput-object p5, p0, Lrx/internal/util/InternalObservableUtils$k;->d:Lrx/h;

    .line 310
    return-void
.end method


# virtual methods
.method public a()Lrx/d/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$k;, "Lrx/internal/util/InternalObservableUtils$k<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$k;->b:Lrx/e;

    iget-wide v2, p0, Lrx/internal/util/InternalObservableUtils$k;->c:J

    iget-object v1, p0, Lrx/internal/util/InternalObservableUtils$k;->a:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lrx/internal/util/InternalObservableUtils$k;->d:Lrx/h;

    invoke-virtual {v0, v2, v3, v1, v4}, Lrx/e;->g(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$k;, "Lrx/internal/util/InternalObservableUtils$k<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$k;->a()Lrx/d/c;

    move-result-object v0

    return-object v0
.end method
