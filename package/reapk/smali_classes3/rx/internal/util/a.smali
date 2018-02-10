.class public final Lrx/internal/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<",
            "Lrx/Notification",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<",
            "Lrx/Notification",
            "<-TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/util/a;, "Lrx/internal/util/a<TT;>;"
    .local p1, "onNotification":Lrx/c/c;, "Lrx/c/c<Lrx/Notification<-TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/util/a;->a:Lrx/c/c;

    .line 32
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/util/a;, "Lrx/internal/util/a<TT;>;"
    iget-object v0, p0, Lrx/internal/util/a;->a:Lrx/c/c;

    invoke-static {}, Lrx/Notification;->a()Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/util/a;, "Lrx/internal/util/a<TT;>;"
    iget-object v0, p0, Lrx/internal/util/a;->a:Lrx/c/c;

    invoke-static {p1}, Lrx/Notification;->a(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/util/a;, "Lrx/internal/util/a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/util/a;->a:Lrx/c/c;

    invoke-static {p1}, Lrx/Notification;->a(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
