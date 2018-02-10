.class final Lrx/d/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 662
    .local p0, "this":Lrx/d/a$c$a;, "Lrx/d/a$c$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lrx/d/a$c$a;, "Lrx/d/a$c$a<TT;>;"
    .local p1, "s":Lrx/l;, "Lrx/l<-TT;>;"
    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Lrx/d/a$c$a;->a:Lrx/l;

    if-nez v0, :cond_0

    .line 668
    iput-object p1, p0, Lrx/d/a$c$a;->a:Lrx/l;

    .line 669
    monitor-exit p0

    .line 673
    :goto_0
    return-void

    .line 671
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There can be only one subscriber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 671
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 662
    .local p0, "this":Lrx/d/a$c$a;, "Lrx/d/a$c$a<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/d/a$c$a;->a(Lrx/l;)V

    return-void
.end method
