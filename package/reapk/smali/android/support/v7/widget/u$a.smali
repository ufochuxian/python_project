.class Landroid/support/v7/widget/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Landroid/support/v7/widget/u$a;->a:Landroid/support/v7/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    iget-object v1, p0, Landroid/support/v7/widget/u$a;->a:Landroid/support/v7/widget/u;

    iget-object v1, v1, Landroid/support/v7/widget/u;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 356
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 357
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 359
    :cond_0
    return-void
.end method
