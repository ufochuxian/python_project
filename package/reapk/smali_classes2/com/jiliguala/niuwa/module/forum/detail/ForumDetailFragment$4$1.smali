.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;->onAnimationEnd(Lcom/nineoldandroids/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;

    .prologue
    .line 989
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 992
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 993
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 995
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/ad;->b(Landroid/widget/EditText;)V

    .line 996
    return-void
.end method
