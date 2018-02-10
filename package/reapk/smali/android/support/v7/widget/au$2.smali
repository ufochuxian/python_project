.class Landroid/support/v7/widget/au$2;
.super Landroid/support/v4/view/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/au;->a(IJ)Landroid/support/v4/view/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/au;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/au;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v7/widget/au;

    .prologue
    .line 568
    iput-object p1, p0, Landroid/support/v7/widget/au$2;->b:Landroid/support/v7/widget/au;

    iput p2, p0, Landroid/support/v7/widget/au$2;->a:I

    invoke-direct {p0}, Landroid/support/v4/view/bt;-><init>()V

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/au$2;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 573
    iget-object v0, p0, Landroid/support/v7/widget/au$2;->b:Landroid/support/v7/widget/au;

    iget-object v0, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 574
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 578
    iget-boolean v0, p0, Landroid/support/v7/widget/au$2;->c:Z

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/au$2;->b:Landroid/support/v7/widget/au;

    iget-object v0, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/au$2;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 581
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/au$2;->c:Z

    .line 586
    return-void
.end method
