.class Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    const v3, 0x7f090098

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 52
    .local v2, "oldSelected":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 54
    .local v1, "newSelected":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$OnForumTabSelectedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->b(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$OnForumTabSelectedListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/jiliguala/niuwa/module/forum/page/ForumPageFragment$OnForumTabSelectedListener;->onTabSelected(I)V

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 59
    if-ne v2, v1, :cond_1

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->c(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$a;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$a;->a(I)V

    .line 63
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->d(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 65
    const-string v3, "Room_name"

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->d(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/a;->getResStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Room Clicks"

    invoke-static {v3, v4, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    return-void
.end method
