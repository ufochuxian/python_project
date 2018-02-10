.class Landroid/support/v7/widget/GridLayout$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2259
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$e;->a()V

    .line 2260
    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$a;IZ)I
    .locals 2
    .param p1, "gl"    # Landroid/support/v7/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Landroid/support/v7/widget/GridLayout$a;
    .param p4, "size"    # I
    .param p5, "horizontal"    # Z

    .prologue
    .line 2283
    iget v0, p0, Landroid/support/v7/widget/GridLayout$e;->b:I

    invoke-static {p1}, Landroid/support/v4/view/bd;->a(Landroid/view/ViewGroup;)I

    move-result v1

    invoke-virtual {p3, p2, p4, v1}, Landroid/support/v7/widget/GridLayout$a;->a(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected a(Z)I
    .locals 2
    .param p1, "min"    # Z

    .prologue
    .line 2274
    if-nez p1, :cond_0

    .line 2275
    iget v0, p0, Landroid/support/v7/widget/GridLayout$e;->d:I

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2276
    const v0, 0x186a0

    .line 2279
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout$e;->b:I

    iget v1, p0, Landroid/support/v7/widget/GridLayout$e;->c:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2263
    iput v0, p0, Landroid/support/v7/widget/GridLayout$e;->b:I

    .line 2264
    iput v0, p0, Landroid/support/v7/widget/GridLayout$e;->c:I

    .line 2265
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/GridLayout$e;->d:I

    .line 2266
    return-void
.end method

.method protected a(II)V
    .locals 1
    .param p1, "before"    # I
    .param p2, "after"    # I

    .prologue
    .line 2269
    iget v0, p0, Landroid/support/v7/widget/GridLayout$e;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$e;->b:I

    .line 2270
    iget v0, p0, Landroid/support/v7/widget/GridLayout$e;->c:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$e;->c:I

    .line 2271
    return-void
.end method

.method protected final a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$d;I)V
    .locals 5
    .param p1, "gl"    # Landroid/support/v7/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "spec"    # Landroid/support/v7/widget/GridLayout$j;
    .param p4, "axis"    # Landroid/support/v7/widget/GridLayout$d;
    .param p5, "size"    # I

    .prologue
    .line 2287
    iget v3, p0, Landroid/support/v7/widget/GridLayout$e;->d:I

    invoke-virtual {p3}, Landroid/support/v7/widget/GridLayout$j;->a()I

    move-result v4

    and-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/widget/GridLayout$e;->d:I

    .line 2288
    iget-boolean v2, p4, Landroid/support/v7/widget/GridLayout$d;->d:Z

    .line 2289
    .local v2, "horizontal":Z
    invoke-virtual {p3, v2}, Landroid/support/v7/widget/GridLayout$j;->a(Z)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v0

    .line 2291
    .local v0, "alignment":Landroid/support/v7/widget/GridLayout$a;
    invoke-static {p1}, Landroid/support/v4/view/bd;->a(Landroid/view/ViewGroup;)I

    move-result v3

    invoke-virtual {v0, p2, p5, v3}, Landroid/support/v7/widget/GridLayout$a;->a(Landroid/view/View;II)I

    move-result v1

    .line 2292
    .local v1, "before":I
    sub-int v3, p5, v1

    invoke-virtual {p0, v1, v3}, Landroid/support/v7/widget/GridLayout$e;->a(II)V

    .line 2293
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
