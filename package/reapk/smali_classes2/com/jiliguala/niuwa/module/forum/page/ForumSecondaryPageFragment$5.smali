.class Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 331
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$5;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901da

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$5;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$5;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->access$500(Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment$5;->a:Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/page/ForumSecondaryPageFragment;->autoRefresh()V

    .line 340
    :cond_0
    return-void
.end method
