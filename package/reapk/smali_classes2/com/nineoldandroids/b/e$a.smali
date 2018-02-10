.class Lcom/nineoldandroids/b/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;
.implements Lcom/nineoldandroids/a/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nineoldandroids/b/e;


# direct methods
.method private constructor <init>(Lcom/nineoldandroids/b/e;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/b/e;Lcom/nineoldandroids/b/e$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nineoldandroids/b/e;
    .param p2, "x1"    # Lcom/nineoldandroids/b/e$1;

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/nineoldandroids/b/e$a;-><init>(Lcom/nineoldandroids/b/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/a/q;)V
    .locals 11
    .param p1, "animation"    # Lcom/nineoldandroids/a/q;

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/nineoldandroids/a/q;->C()F

    move-result v1

    .line 678
    .local v1, "fraction":F
    iget-object v9, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v9}, Lcom/nineoldandroids/b/e;->c(Lcom/nineoldandroids/b/e;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/b/e$c;

    .line 679
    .local v3, "propertyBundle":Lcom/nineoldandroids/b/e$c;
    iget v4, v3, Lcom/nineoldandroids/b/e$c;->a:I

    .line 680
    .local v4, "propertyMask":I
    and-int/lit16 v9, v4, 0x1ff

    if-eqz v9, :cond_0

    .line 681
    iget-object v9, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v9}, Lcom/nineoldandroids/b/e;->d(Lcom/nineoldandroids/b/e;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 682
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 683
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 686
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    iget-object v7, v3, Lcom/nineoldandroids/b/e$c;->b:Ljava/util/ArrayList;

    .line 687
    .local v7, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/b/e$b;>;"
    if-eqz v7, :cond_1

    .line 688
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 689
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 690
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nineoldandroids/b/e$b;

    .line 691
    .local v8, "values":Lcom/nineoldandroids/b/e$b;
    iget v9, v8, Lcom/nineoldandroids/b/e$b;->b:F

    iget v10, v8, Lcom/nineoldandroids/b/e$b;->c:F

    mul-float/2addr v10, v1

    add-float v6, v9, v10

    .line 695
    .local v6, "value":F
    iget-object v9, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    iget v10, v8, Lcom/nineoldandroids/b/e$b;->a:I

    invoke-static {v9, v10, v6}, Lcom/nineoldandroids/b/e;->a(Lcom/nineoldandroids/b/e;IF)V

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v6    # "value":F
    .end local v8    # "values":Lcom/nineoldandroids/b/e$b;
    :cond_1
    iget-object v9, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v9}, Lcom/nineoldandroids/b/e;->d(Lcom/nineoldandroids/b/e;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 708
    .restart local v5    # "v":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 709
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 711
    :cond_2
    return-void
.end method

.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->b(Lcom/nineoldandroids/b/e;)Lcom/nineoldandroids/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->b(Lcom/nineoldandroids/b/e;)Lcom/nineoldandroids/a/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/a/a$a;->onAnimationCancel(Lcom/nineoldandroids/a/a;)V

    .line 637
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->b(Lcom/nineoldandroids/b/e;)Lcom/nineoldandroids/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->b(Lcom/nineoldandroids/b/e;)Lcom/nineoldandroids/a/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/a/a$a;->onAnimationEnd(Lcom/nineoldandroids/a/a;)V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->c(Lcom/nineoldandroids/b/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->c(Lcom/nineoldandroids/b/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/b/e;->a(Lcom/nineoldandroids/b/e;Lcom/nineoldandroids/a/a$a;)Lcom/nineoldandroids/a/a$a;

    .line 658
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->b(Lcom/nineoldandroids/b/e;)Lcom/nineoldandroids/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->b(Lcom/nineoldandroids/b/e;)Lcom/nineoldandroids/a/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/a/a$a;->onAnimationRepeat(Lcom/nineoldandroids/a/a;)V

    .line 644
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->b(Lcom/nineoldandroids/b/e;)Lcom/nineoldandroids/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/nineoldandroids/b/e$a;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->b(Lcom/nineoldandroids/b/e;)Lcom/nineoldandroids/a/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/a/a$a;->onAnimationStart(Lcom/nineoldandroids/a/a;)V

    .line 630
    :cond_0
    return-void
.end method
