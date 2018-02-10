.class final Lrx/internal/operators/cq$g;
.super Lrx/internal/operators/cq$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/cq$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x51dae9f17ccbb88eL


# instance fields
.field final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 1194
    .local p0, "this":Lrx/internal/operators/cq$g;, "Lrx/internal/operators/cq$g<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/cq$a;-><init>()V

    .line 1195
    iput p1, p0, Lrx/internal/operators/cq$g;->d:I

    .line 1196
    return-void
.end method


# virtual methods
.method c()V
    .locals 2

    .prologue
    .line 1201
    .local p0, "this":Lrx/internal/operators/cq$g;, "Lrx/internal/operators/cq$g<TT;>;"
    iget v0, p0, Lrx/internal/operators/cq$g;->b:I

    iget v1, p0, Lrx/internal/operators/cq$g;->d:I

    if-le v0, v1, :cond_0

    .line 1202
    invoke-virtual {p0}, Lrx/internal/operators/cq$g;->a()V

    .line 1204
    :cond_0
    return-void
.end method
