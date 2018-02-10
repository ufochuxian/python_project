.class public final Lrx/internal/operators/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/at$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lrx/internal/operators/at;->a:I

    .line 33
    iput p2, p0, Lrx/internal/operators/at;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "childSubscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Integer;>;"
    new-instance v0, Lrx/internal/operators/at$a;

    iget v1, p0, Lrx/internal/operators/at;->a:I

    iget v2, p0, Lrx/internal/operators/at;->b:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/at$a;-><init>(Lrx/l;II)V

    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 39
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/at;->a(Lrx/l;)V

    return-void
.end method
