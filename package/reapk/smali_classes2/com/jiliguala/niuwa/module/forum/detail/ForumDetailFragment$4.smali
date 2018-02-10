.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->hideReplyWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1003
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 989
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 998
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 1008
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 2
    .param p1, "animator"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$4;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 985
    return-void
.end method
