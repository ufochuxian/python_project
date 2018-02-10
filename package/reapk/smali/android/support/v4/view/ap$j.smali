.class Landroid/support/v4/view/ap$j;
.super Landroid/support/v4/view/ap$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1510
    invoke-direct {p0}, Landroid/support/v4/view/ap$i;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1554
    invoke-static {p1}, Landroid/support/v4/view/aw;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public R(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1559
    invoke-static {p1}, Landroid/support/v4/view/aw;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1524
    invoke-static {p1, p2}, Landroid/support/v4/view/aw;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1525
    return-void
.end method

.method public ae(Landroid/view/View;)Landroid/view/Display;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1564
    invoke-static {p1}, Landroid/support/v4/view/aw;->g(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1549
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/aw;->a(Landroid/view/View;IIII)V

    .line 1550
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 1519
    invoke-static {p1, p2}, Landroid/support/v4/view/aw;->a(Landroid/view/View;I)V

    .line 1520
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 1534
    invoke-static {p1, p2}, Landroid/support/v4/view/aw;->b(Landroid/view/View;I)V

    .line 1535
    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1514
    invoke-static {p1}, Landroid/support/v4/view/aw;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public j(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1529
    invoke-static {p1}, Landroid/support/v4/view/aw;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public p(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1539
    invoke-static {p1}, Landroid/support/v4/view/aw;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public q(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1544
    invoke-static {p1}, Landroid/support/v4/view/aw;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method
