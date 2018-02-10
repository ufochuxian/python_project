.class public abstract Landroid/support/v7/widget/b/a;
.super Landroid/support/v7/h/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/h/f$b",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/widget/RecyclerView$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$a;

    .prologue
    .line 36
    .local p0, "this":Landroid/support/v7/widget/b/a;, "Landroid/support/v7/widget/b/a<TT2;>;"
    invoke-direct {p0}, Landroid/support/v7/h/f$b;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/support/v7/widget/b/a;->a:Landroid/support/v7/widget/RecyclerView$a;

    .line 38
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 42
    .local p0, "this":Landroid/support/v7/widget/b/a;, "Landroid/support/v7/widget/b/a<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/widget/b/a;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->notifyItemRangeInserted(II)V

    .line 43
    return-void
.end method

.method public b(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 47
    .local p0, "this":Landroid/support/v7/widget/b/a;, "Landroid/support/v7/widget/b/a<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/widget/b/a;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->notifyItemRangeRemoved(II)V

    .line 48
    return-void
.end method

.method public c(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 52
    .local p0, "this":Landroid/support/v7/widget/b/a;, "Landroid/support/v7/widget/b/a<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/widget/b/a;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->notifyItemMoved(II)V

    .line 53
    return-void
.end method

.method public d(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 57
    .local p0, "this":Landroid/support/v7/widget/b/a;, "Landroid/support/v7/widget/b/a<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/widget/b/a;->a:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->notifyItemRangeChanged(II)V

    .line 58
    return-void
.end method
