.class public Lcom/jiliguala/niuwa/module/settings/AvatarActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/settings/listener/ChooseOrTakePhotoCallback;


# static fields
.field private static final KEY_PIC_TYPE:Ljava/lang/String; = "KEY_PIC_TYPE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fragment:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

.field private icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

.field private mFragment:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

.field public mPicturePath:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->type:I

    return-void
.end method

.method private doTakeOrChoosePhoto(I)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    new-instance v1, Lcom/jiliguala/niuwa/module/settings/AvatarActivity$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity$1;-><init>(Lcom/jiliguala/niuwa/module/settings/AvatarActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->setImageChooserListener(Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;)V

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->choose()Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method public chooseFromAlbum()V
    .locals 2

    .prologue
    .line 144
    const/16 v1, 0x123

    :try_start_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->doTakeOrChoosePhoto(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/jiliguala/niuwa/common/helper/permissions/NoCameraPermissionException;

    if-eqz v1, :cond_0

    .line 147
    const v1, 0x7f0f0062

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public jumpToCrop(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const v1, 0x7f0f015e

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 86
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->finish()V

    .line 88
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/settings/PicCropActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pic_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "key_avatar_type"

    iget v2, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->overridePendingTransition(II)V

    .line 93
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->finish()V

    .line 94
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->finish()V

    .line 69
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/16 v0, 0x123

    if-eq p1, v0, :cond_1

    const/16 v0, 0x126

    if-ne p1, v0, :cond_3

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    if-nez v0, :cond_2

    .line 72
    new-instance v0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    iget v1, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->type:I

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->icm:Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    invoke-virtual {v0, p1, p3}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->submit(ILandroid/content/Intent;)V

    .line 76
    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->mFragment:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->mFragment:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;->dismissAllowingStateLoss()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->fragment:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->fragment:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->dismissAllowingStateLoss()V

    .line 58
    :cond_1
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onBackPressed()V

    .line 59
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->finish()V

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_avatar_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->type:I

    .line 44
    :cond_0
    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 46
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->mFragment:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->mFragment:Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/AvatarModifyDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 164
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "KEY_PIC_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->type:I

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 158
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 159
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "KEY_PIC_TYPE"

    iget v1, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->type:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public takePhoto()V
    .locals 2

    .prologue
    .line 113
    const/16 v1, 0x126

    :try_start_0
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->doTakeOrChoosePhoto(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/jiliguala/niuwa/common/helper/permissions/NoCameraPermissionException;

    if-eqz v1, :cond_0

    .line 116
    const v1, 0x7f0f0062

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->onBackPressed()V

    goto :goto_0
.end method
