.class public final Lrx/internal/schedulers/c;
.super Lrx/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/c$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 34
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/schedulers/c;->a:Ljava/util/concurrent/Executor;

    .line 36
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/h$a;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lrx/internal/schedulers/c$a;

    iget-object v1, p0, Lrx/internal/schedulers/c;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/c$a;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
