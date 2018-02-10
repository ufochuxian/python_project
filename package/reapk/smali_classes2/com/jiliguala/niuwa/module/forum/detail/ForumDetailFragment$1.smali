.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
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
    .line 140
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changePicture()V
    .locals 3

    .prologue
    .line 149
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 150
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    move-result-object v1

    .line 151
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 152
    return-void
.end method

.method public deletePicture()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$002(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    return-void
.end method
