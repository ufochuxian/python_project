.class final Lrx/internal/operators/ea$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ea;
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lrx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method public constructor <init>(Lrx/f;Lrx/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f",
            "<TT;>;",
            "Lrx/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    .local p1, "consumer":Lrx/f;, "Lrx/f<TT;>;"
    .local p2, "producer":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Lrx/e/f;

    invoke-direct {v0, p1}, Lrx/e/f;-><init>(Lrx/f;)V

    iput-object v0, p0, Lrx/internal/operators/ea$a;->a:Lrx/f;

    .line 357
    iput-object p2, p0, Lrx/internal/operators/ea$a;->b:Lrx/e;

    .line 358
    return-void
.end method
