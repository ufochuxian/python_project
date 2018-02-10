.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showDeleteConfirmDlg(Ljava/lang/String;ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Dialog;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;ZLjava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 1699
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->e:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->a:Z

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->c:Landroid/app/Dialog;

    iput-object p5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1704
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Type"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "Post"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Delete Topic/Reply"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1707
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->e:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->e:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->e:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1708
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->e:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->e:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 1710
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->e:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->c:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$22;->d:Landroid/view/View;

    invoke-static {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$5000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V

    .line 1712
    return-void

    .line 1704
    :cond_2
    const-string v1, "Reply"

    goto :goto_0
.end method
