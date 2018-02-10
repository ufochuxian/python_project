.class Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$2;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$2;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$2;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$2;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 124
    .local v0, "scrollPos":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$2;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->smoothScrollTo(II)V

    .line 125
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator$2;->b:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;->a(Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/ForumPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 126
    return-void
.end method
