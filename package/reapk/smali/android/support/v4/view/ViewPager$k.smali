.class Landroid/support/v4/view/ViewPager$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 4
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    .prologue
    .line 3176
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    .line 3177
    .local v0, "llp":Landroid/support/v4/view/ViewPager$c;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$c;

    .line 3178
    .local v1, "rlp":Landroid/support/v4/view/ViewPager$c;
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$c;->a:Z

    iget-boolean v3, v1, Landroid/support/v4/view/ViewPager$c;->a:Z

    if-eq v2, v3, :cond_1

    .line 3179
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$c;->a:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 3181
    :goto_0
    return v2

    .line 3179
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 3181
    :cond_1
    iget v2, v0, Landroid/support/v4/view/ViewPager$c;->e:I

    iget v3, v1, Landroid/support/v4/view/ViewPager$c;->e:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3173
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPager$k;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
