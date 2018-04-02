.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->showPop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$6;->b:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$6;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$6;->b:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1124
    return-void
.end method
