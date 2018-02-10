.class public final Lrx/internal/schedulers/g;
.super Lrx/h;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 27
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 28
    iput-object p1, p0, Lrx/internal/schedulers/g;->a:Ljava/util/concurrent/ThreadFactory;

    .line 29
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/h$a;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lrx/internal/schedulers/h;

    iget-object v1, p0, Lrx/internal/schedulers/g;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/h;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
