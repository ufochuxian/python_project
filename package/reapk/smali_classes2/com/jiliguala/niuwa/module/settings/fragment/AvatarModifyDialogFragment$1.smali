.class Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 33
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 35
    :sswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;)Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;->takePhoto()V

    .line 36
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 39
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;)Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;->chooseFromAlbum()V

    .line 40
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 43
    :sswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 44
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090049 -> :sswitch_1
        0x7f0900fa -> :sswitch_2
        0x7f09055f -> :sswitch_0
    .end sparse-switch
.end method
