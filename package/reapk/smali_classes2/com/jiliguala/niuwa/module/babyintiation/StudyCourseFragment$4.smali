.class Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$400(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 347
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$700(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 354
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 355
    .local v0, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMap_Id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Restoration Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 360
    return-void

    .line 348
    .end local v0    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$500(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 349
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$700(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method
