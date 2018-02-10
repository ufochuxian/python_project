.class Landroid/support/v7/widget/u$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/u;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/support/v7/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v7/widget/u;

    .prologue
    .line 105
    iput-object p1, p0, Landroid/support/v7/widget/u$2;->b:Landroid/support/v7/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iget-object v0, p0, Landroid/support/v7/widget/u$2;->b:Landroid/support/v7/widget/u;

    iget-object v0, v0, Landroid/support/v7/widget/u;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ap;->ad(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/u$2;->a:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/support/v7/widget/u$2;->a:Z

    .line 111
    .local v0, "wasAttached":Z
    iget-object v1, p0, Landroid/support/v7/widget/u$2;->b:Landroid/support/v7/widget/u;

    iget-object v1, v1, Landroid/support/v7/widget/u;->c:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ap;->ad(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/u$2;->a:Z

    .line 112
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/u$2;->a:Z

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Landroid/support/v7/widget/u$2;->b:Landroid/support/v7/widget/u;

    invoke-static {v1}, Landroid/support/v7/widget/u;->a(Landroid/support/v7/widget/u;)V

    .line 115
    :cond_0
    return-void
.end method
