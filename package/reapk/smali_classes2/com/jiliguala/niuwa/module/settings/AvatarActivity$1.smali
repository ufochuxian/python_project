.class Lcom/jiliguala/niuwa/module/settings/AvatarActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->doTakeOrChoosePhoto(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/AvatarActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/AvatarActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/AvatarActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/AvatarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 135
    const v0, 0x7f0f015e

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 136
    return-void
.end method

.method public onImageChosen(Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;)V
    .locals 2
    .param p1, "chosenImage"    # Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AvatarActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/AvatarActivity;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->getFilePathOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;->jumpToCrop(Ljava/lang/String;)V

    .line 130
    return-void
.end method
