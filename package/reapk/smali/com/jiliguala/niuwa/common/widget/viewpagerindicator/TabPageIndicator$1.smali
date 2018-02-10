.class Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 64
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)I

    move-result v1

    .line 65
    .local v1, "oldSelected":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    .local v0, "newSelected":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v4, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 68
    if-ne v1, v0, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->b(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->b(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$a;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$a;->a(I)V

    .line 75
    :cond_0
    if-ne v1, v5, :cond_1

    if-eq v0, v5, :cond_1

    .line 76
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;J)J

    .line 77
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->c(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->d(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 78
    .local v2, "total":J
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$1;->a:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Community Home View"

    const/4 v6, 0x0

    long-to-int v7, v2

    invoke-static {v4, v5, v6, v7}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 80
    .end local v2    # "total":J
    :cond_1
    return-void
.end method
