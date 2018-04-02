.class Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->autoRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$8;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$8;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setRefreshing(Z)V

    .line 419
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$8;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$700(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)V

    .line 420
    return-void
.end method
