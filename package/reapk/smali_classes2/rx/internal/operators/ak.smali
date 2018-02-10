.class public final Lrx/internal/operators/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ak$1;,
        Lrx/internal/operators/ak$e;,
        Lrx/internal/operators/ak$b;,
        Lrx/internal/operators/ak$d;,
        Lrx/internal/operators/ak$c;,
        Lrx/internal/operators/ak$f;,
        Lrx/internal/operators/ak$g;,
        Lrx/internal/operators/ak$a;
    }
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
.field final a:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<",
            "Lrx/Emitter",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:Lrx/Emitter$BackpressureMode;


# direct methods
.method public constructor <init>(Lrx/c/c;Lrx/Emitter$BackpressureMode;)V
    .locals 0
    .param p2, "backpressure"    # Lrx/Emitter$BackpressureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<",
            "Lrx/Emitter",
            "<TT;>;>;",
            "Lrx/Emitter$BackpressureMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/ak;, "Lrx/internal/operators/ak<TT;>;"
    .local p1, "Emitter":Lrx/c/c;, "Lrx/c/c<Lrx/Emitter<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/ak;->a:Lrx/c/c;

    .line 40
    iput-object p2, p0, Lrx/internal/operators/ak;->b:Lrx/Emitter$BackpressureMode;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/ak;, "Lrx/internal/operators/ak<TT;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TT;>;"
    sget-object v1, Lrx/internal/operators/ak$1;->a:[I

    iget-object v2, p0, Lrx/internal/operators/ak;->b:Lrx/Emitter$BackpressureMode;

    invoke-virtual {v2}, Lrx/Emitter$BackpressureMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 65
    new-instance v0, Lrx/internal/operators/ak$b;

    sget v1, Lrx/internal/util/j;->b:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/ak$b;-><init>(Lrx/l;I)V

    .line 70
    .local v0, "emitter":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    :goto_0
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 71
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 72
    iget-object v1, p0, Lrx/internal/operators/ak;->a:Lrx/c/c;

    invoke-interface {v1, v0}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 74
    return-void

    .line 49
    .end local v0    # "emitter":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    :pswitch_0
    new-instance v0, Lrx/internal/operators/ak$g;

    invoke-direct {v0, p1}, Lrx/internal/operators/ak$g;-><init>(Lrx/l;)V

    .line 50
    .restart local v0    # "emitter":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    goto :goto_0

    .line 53
    .end local v0    # "emitter":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    :pswitch_1
    new-instance v0, Lrx/internal/operators/ak$d;

    invoke-direct {v0, p1}, Lrx/internal/operators/ak$d;-><init>(Lrx/l;)V

    .line 54
    .restart local v0    # "emitter":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    goto :goto_0

    .line 57
    .end local v0    # "emitter":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    :pswitch_2
    new-instance v0, Lrx/internal/operators/ak$c;

    invoke-direct {v0, p1}, Lrx/internal/operators/ak$c;-><init>(Lrx/l;)V

    .line 58
    .restart local v0    # "emitter":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    goto :goto_0

    .line 61
    .end local v0    # "emitter":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    :pswitch_3
    new-instance v0, Lrx/internal/operators/ak$e;

    invoke-direct {v0, p1}, Lrx/internal/operators/ak$e;-><init>(Lrx/l;)V

    .line 62
    .restart local v0    # "emitter":Lrx/internal/operators/ak$a;, "Lrx/internal/operators/ak$a<TT;>;"
    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/ak;, "Lrx/internal/operators/ak<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ak;->a(Lrx/l;)V

    return-void
.end method
