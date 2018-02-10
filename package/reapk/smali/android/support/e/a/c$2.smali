.class Landroid/support/e/a/c$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/e/a/c;->a(Landroid/support/e/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/e/a/c;


# direct methods
.method constructor <init>(Landroid/support/e/a/c;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/e/a/c;

    .prologue
    .line 693
    iput-object p1, p0, Landroid/support/e/a/c$2;->a:Landroid/support/e/a/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 706
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/e/a/c$2;->a:Landroid/support/e/a/c;

    .line 707
    invoke-static {v3}, Landroid/support/e/a/c;->a(Landroid/support/e/a/c;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 708
    .local v2, "tmpCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/e/a/b$a;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 709
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 710
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/e/a/b$a;

    iget-object v4, p0, Landroid/support/e/a/c$2;->a:Landroid/support/e/a/c;

    invoke-virtual {v3, v4}, Landroid/support/e/a/b$a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 696
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/e/a/c$2;->a:Landroid/support/e/a/c;

    .line 697
    invoke-static {v3}, Landroid/support/e/a/c;->a(Landroid/support/e/a/c;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 698
    .local v2, "tmpCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/e/a/b$a;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 699
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 700
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/e/a/b$a;

    iget-object v4, p0, Landroid/support/e/a/c$2;->a:Landroid/support/e/a/c;

    invoke-virtual {v3, v4}, Landroid/support/e/a/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_0
    return-void
.end method
