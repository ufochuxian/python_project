.class Landroid/support/v4/widget/ae$f;
.super Landroid/support/v4/widget/ae$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/support/v4/widget/ae$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatIcs;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;I)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "imeOptions"    # I

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$f;->e(Landroid/view/View;)V

    .line 262
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatIcs;->a(Landroid/view/View;I)V

    .line 263
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "inputType"    # I

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$f;->e(Landroid/view/View;)V

    .line 268
    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatIcs;->b(Landroid/view/View;I)V

    .line 269
    return-void
.end method
