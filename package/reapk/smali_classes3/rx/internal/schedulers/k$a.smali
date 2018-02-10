.class Lrx/internal/schedulers/k$a;
.super Lrx/internal/schedulers/k$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lrx/c/b;

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 286
    invoke-direct {p0}, Lrx/internal/schedulers/k$d;-><init>()V

    .line 287
    iput-object p1, p0, Lrx/internal/schedulers/k$a;->a:Lrx/c/b;

    .line 288
    iput-wide p2, p0, Lrx/internal/schedulers/k$a;->b:J

    .line 289
    iput-object p4, p0, Lrx/internal/schedulers/k$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 290
    return-void
.end method


# virtual methods
.method protected a(Lrx/h$a;Lrx/d;)Lrx/m;
    .locals 4
    .param p1, "actualWorker"    # Lrx/h$a;
    .param p2, "actionCompletable"    # Lrx/d;

    .prologue
    .line 294
    new-instance v0, Lrx/internal/schedulers/k$c;

    iget-object v1, p0, Lrx/internal/schedulers/k$a;->a:Lrx/c/b;

    invoke-direct {v0, v1, p2}, Lrx/internal/schedulers/k$c;-><init>(Lrx/c/b;Lrx/d;)V

    iget-wide v2, p0, Lrx/internal/schedulers/k$a;->b:J

    iget-object v1, p0, Lrx/internal/schedulers/k$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v2, v3, v1}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    move-result-object v0

    return-object v0
.end method
