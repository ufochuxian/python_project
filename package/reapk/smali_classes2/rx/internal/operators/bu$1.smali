.class Lrx/internal/operators/bu$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bu;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lrx/Notification",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/l;

.field final synthetic c:Lrx/internal/operators/bu;


# direct methods
.method constructor <init>(Lrx/internal/operators/bu;Lrx/l;Lrx/l;)V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/bu$1;, "Lrx/internal/operators/bu.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/bu$1;->c:Lrx/internal/operators/bu;

    iput-object p3, p0, Lrx/internal/operators/bu$1;->b:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public a(Lrx/Notification;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/bu$1;, "Lrx/internal/operators/bu.1;"
    .local p1, "t":Lrx/Notification;, "Lrx/Notification<TT;>;"
    sget-object v0, Lrx/internal/operators/bu$2;->a:[I

    invoke-virtual {p1}, Lrx/Notification;->f()Lrx/Notification$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Notification$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported notification type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/bu$1;->onError(Ljava/lang/Throwable;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-boolean v0, p0, Lrx/internal/operators/bu$1;->a:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lrx/internal/operators/bu$1;->b:Lrx/l;

    invoke-virtual {p1}, Lrx/Notification;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-virtual {p1}, Lrx/Notification;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/bu$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-virtual {p0}, Lrx/internal/operators/bu$1;->onCompleted()V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/bu$1;, "Lrx/internal/operators/bu.1;"
    iget-boolean v0, p0, Lrx/internal/operators/bu$1;->a:Z

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/bu$1;->a:Z

    .line 85
    iget-object v0, p0, Lrx/internal/operators/bu$1;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 87
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/bu$1;, "Lrx/internal/operators/bu.1;"
    iget-boolean v0, p0, Lrx/internal/operators/bu$1;->a:Z

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/bu$1;->a:Z

    .line 77
    iget-object v0, p0, Lrx/internal/operators/bu$1;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 79
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/bu$1;, "Lrx/internal/operators/bu.1;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bu$1;->a(Lrx/Notification;)V

    return-void
.end method
