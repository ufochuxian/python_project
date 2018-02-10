.class Landroid/support/v4/view/a/h$c;
.super Landroid/support/v4/view/a/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2235
    invoke-direct {p0}, Landroid/support/v4/view/a/h$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2243
    invoke-static {p1, p2}, Landroid/support/v4/view/a/j;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 2244
    return-void
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 2248
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/a/j;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2249
    return-void
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2258
    invoke-static {p1, p2}, Landroid/support/v4/view/a/j;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 2259
    return-void
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 2263
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/a/j;->b(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2264
    return-void
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2238
    invoke-static {p1}, Landroid/support/v4/view/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 2253
    invoke-static {p1}, Landroid/support/v4/view/a/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
