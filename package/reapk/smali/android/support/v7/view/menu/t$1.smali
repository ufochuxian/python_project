.class Landroid/support/v7/view/menu/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/t;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/t;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/view/menu/t;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v7/view/menu/t$1;->a:Landroid/support/v7/view/menu/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Landroid/support/v7/view/menu/t$1;->a:Landroid/support/v7/view/menu/t;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/t;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/t$1;->a:Landroid/support/v7/view/menu/t;

    iget-object v1, v1, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Landroid/support/v7/view/menu/t$1;->a:Landroid/support/v7/view/menu/t;

    iget-object v0, v1, Landroid/support/v7/view/menu/t;->b:Landroid/view/View;

    .line 66
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/t$1;->a:Landroid/support/v7/view/menu/t;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/t;->d()V

    .line 73
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 70
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/t$1;->a:Landroid/support/v7/view/menu/t;

    iget-object v1, v1, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->a()V

    goto :goto_0
.end method
