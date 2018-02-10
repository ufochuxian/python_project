.class public Landroid/support/v7/widget/AbsActionBarView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/support/v7/widget/AbsActionBarView;

.field private c:Z


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/AbsActionBarView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v7/widget/AbsActionBarView;

    .prologue
    .line 273
    iput-object p1, p0, Landroid/support/v7/widget/AbsActionBarView$a;->b:Landroid/support/v7/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/AbsActionBarView$a;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/bm;I)Landroid/support/v7/widget/AbsActionBarView$a;
    .locals 1
    .param p1, "animation"    # Landroid/support/v4/view/bm;
    .param p2, "visibility"    # I

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$a;->b:Landroid/support/v7/widget/AbsActionBarView;

    iput-object p1, v0, Landroid/support/v7/widget/AbsActionBarView;->f:Landroid/support/v4/view/bm;

    .line 280
    iput p2, p0, Landroid/support/v7/widget/AbsActionBarView$a;->a:I

    .line 281
    return-object p0
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$a;->b:Landroid/support/v7/widget/AbsActionBarView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/AbsActionBarView;->a(Landroid/support/v7/widget/AbsActionBarView;I)V

    .line 287
    iput-boolean v1, p0, Landroid/support/v7/widget/AbsActionBarView$a;->c:Z

    .line 288
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/support/v7/widget/AbsActionBarView$a;->c:Z

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$a;->b:Landroid/support/v7/widget/AbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/AbsActionBarView;->f:Landroid/support/v4/view/bm;

    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$a;->b:Landroid/support/v7/widget/AbsActionBarView;

    iget v1, p0, Landroid/support/v7/widget/AbsActionBarView$a;->a:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/AbsActionBarView;->b(Landroid/support/v7/widget/AbsActionBarView;I)V

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AbsActionBarView$a;->c:Z

    .line 301
    return-void
.end method
