.class Landroid/support/v7/widget/ae$3;
.super Landroid/support/v7/widget/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ae;->b()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ae;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ae;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/ae;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 170
    iput-object p1, p0, Landroid/support/v7/widget/ae$3;->a:Landroid/support/v7/widget/ae;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/u;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/s;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/ae$3;->a:Landroid/support/v7/widget/ae;

    iget-object v0, v0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->d()Landroid/support/v7/view/menu/m;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/ae$3;->a:Landroid/support/v7/widget/ae;

    invoke-virtual {v0}, Landroid/support/v7/widget/ae;->e()V

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/ae$3;->a:Landroid/support/v7/widget/ae;

    invoke-virtual {v0}, Landroid/support/v7/widget/ae;->f()V

    .line 180
    const/4 v0, 0x1

    return v0
.end method
