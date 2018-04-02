.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->requestDeletePost(Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->b:Landroid/view/View;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 1749
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->deleteAction(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1758
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1760
    :goto_0
    return-void

    .line 1752
    :catch_0
    move-exception v0

    .line 1755
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1758
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 1755
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1756
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1758
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1759
    throw v0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 1733
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1738
    const v0, 0x7f0f00e0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1741
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->c:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1743
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1744
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1729
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$24;->a(Ljava/lang/Void;)V

    return-void
.end method
