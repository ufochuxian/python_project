.class Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 32
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->dismissAllowingStateLoss()V

    .line 43
    return-void

    .line 34
    :sswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;)Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;->takePhoto()V

    goto :goto_0

    .line 37
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;)Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;->chooseFromAlbum()V

    goto :goto_0

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090049 -> :sswitch_1
        0x7f090555 -> :sswitch_0
    .end sparse-switch
.end method
