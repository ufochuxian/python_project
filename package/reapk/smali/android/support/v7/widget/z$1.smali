.class Landroid/support/v7/widget/z$1;
.super Landroid/support/v7/widget/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/z;->d(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/z;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/z;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/z;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 1107
    iput-object p1, p0, Landroid/support/v7/widget/z$1;->a:Landroid/support/v7/widget/z;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/u;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Landroid/support/v7/view/menu/s;
    .locals 1

    .prologue
    .line 1107
    invoke-virtual {p0}, Landroid/support/v7/widget/z$1;->e()Landroid/support/v7/widget/z;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/support/v7/widget/z;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Landroid/support/v7/widget/z$1;->a:Landroid/support/v7/widget/z;

    return-object v0
.end method
