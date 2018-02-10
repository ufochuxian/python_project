.class Lrx/internal/schedulers/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Lrx/d;

.field private b:Lrx/c/b;


# direct methods
.method public constructor <init>(Lrx/c/b;Lrx/d;)V
    .locals 0
    .param p1, "action"    # Lrx/c/b;
    .param p2, "actionCompletable"    # Lrx/d;

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lrx/internal/schedulers/k$c;->b:Lrx/c/b;

    .line 304
    iput-object p2, p0, Lrx/internal/schedulers/k$c;->a:Lrx/d;

    .line 305
    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 310
    :try_start_0
    iget-object v0, p0, Lrx/internal/schedulers/k$c;->b:Lrx/c/b;

    invoke-interface {v0}, Lrx/c/b;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lrx/internal/schedulers/k$c;->a:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 314
    return-void

    .line 312
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/schedulers/k$c;->a:Lrx/d;

    invoke-interface {v1}, Lrx/d;->onCompleted()V

    throw v0
.end method
