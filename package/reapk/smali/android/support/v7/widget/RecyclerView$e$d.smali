.class public Landroid/support/v7/widget/RecyclerView$e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12501
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$w;)Landroid/support/v7/widget/RecyclerView$e$d;
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 12511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$e$d;->a(Landroid/support/v7/widget/RecyclerView$w;I)Landroid/support/v7/widget/RecyclerView$e$d;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;I)Landroid/support/v7/widget/RecyclerView$e$d;
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "flags"    # I

    .prologue
    .line 12526
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 12527
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$e$d;->a:I

    .line 12528
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$e$d;->b:I

    .line 12529
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$e$d;->c:I

    .line 12530
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$e$d;->d:I

    .line 12531
    return-object p0
.end method
