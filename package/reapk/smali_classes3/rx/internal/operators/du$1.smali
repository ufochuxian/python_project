.class Lrx/internal/operators/du$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/du;-><init>(Lrx/c/q;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/q;

.field final synthetic b:Lrx/internal/operators/du;


# direct methods
.method constructor <init>(Lrx/internal/operators/du;Lrx/c/q;)V
    .locals 0

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/du$1;, "Lrx/internal/operators/du.1;"
    iput-object p1, p0, Lrx/internal/operators/du$1;->b:Lrx/internal/operators/du;

    iput-object p2, p0, Lrx/internal/operators/du$1;->a:Lrx/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/du$1;, "Lrx/internal/operators/du.1;"
    .local p1, "o1":Ljava/lang/Object;, "TT;"
    .local p2, "o2":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/du$1;->a:Lrx/c/q;

    invoke-interface {v0, p1, p2}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
