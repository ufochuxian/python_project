.class Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 31
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 33
    :sswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;)Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;->deletePicture()V

    .line 34
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 37
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;)Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;->changePicture()V

    .line 38
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 41
    :sswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 31
    :sswitch_data_0
    .sparse-switch
        0x7f0900c3 -> :sswitch_1
        0x7f0900c5 -> :sswitch_0
        0x7f0900fa -> :sswitch_2
    .end sparse-switch
.end method
