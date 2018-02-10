.class Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 153
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->e(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;)Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;->a:I

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, "tabView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 156
    .local v0, "scrollPos":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->smoothScrollTo(II)V

    .line 157
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v2, p0}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 158
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator$2;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;->a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 159
    return-void
.end method
