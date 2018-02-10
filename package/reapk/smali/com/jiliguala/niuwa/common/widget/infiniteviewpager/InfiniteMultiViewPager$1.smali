.class Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 144
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;->a(I)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;

    .line 148
    .local v0, "adapter":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;
    if-nez v0, :cond_2

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    if-nez p1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->b(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 154
    invoke-virtual {v0, v4, v6}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(II)V

    .line 155
    invoke-virtual {v0, v3, v4}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(II)V

    .line 156
    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(II)V

    .line 157
    invoke-virtual {v0, v5, v2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(II)V

    .line 158
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v0, v5}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(I)V

    .line 168
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-virtual {v1, v3, v5}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->b(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 161
    invoke-virtual {v0, v2, v5}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(II)V

    .line 162
    invoke-virtual {v0, v3, v2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(II)V

    .line 163
    invoke-virtual {v0, v4, v3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(II)V

    .line 164
    invoke-virtual {v0, v6, v4}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(II)V

    .line 165
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(I)V

    goto :goto_1
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 124
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;

    .line 126
    .local v0, "adapter":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;->a(Ljava/lang/Object;FI)V

    .line 128
    .end local v0    # "adapter":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-static {v1, p1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;I)I

    .line 133
    sget-boolean v1, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/a;->j:Z

    if-eqz v1, :cond_0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;

    .line 138
    .local v0, "adapter":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$1;->a:Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;->a(Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager;)Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/InfiniteMultiViewPager$a;->a(Ljava/lang/Object;)V

    .line 140
    .end local v0    # "adapter":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;
    :cond_1
    return-void
.end method
