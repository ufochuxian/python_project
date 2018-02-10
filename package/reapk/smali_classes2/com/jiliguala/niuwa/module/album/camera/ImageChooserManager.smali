.class public Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;
.super Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;


# static fields
.field private static final MAX_CHOOSE_NUM:I = 0x9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cameraTakenFolder:Ljava/io/File;

.field private extras:Landroid/os/Bundle;

.field private filePathOriginal:Ljava/lang/String;

.field private listener:Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;

.field private mSelectPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I

    .prologue
    .line 41
    const-string v0, "cam"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jiliguala/niuwa/module/album/camera/AbsChooser;-><init>(Landroid/app/Activity;ILjava/lang/String;Z)V

    .line 42
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->cameraTakenFolder:Ljava/io/File;

    .line 43
    return-void
.end method

.method private choosePicture(IZ)V
    .locals 4
    .param p1, "count"    # I
    .param p2, "singleMode"    # Z

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->activity:Landroid/app/Activity;

    const-class v3, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "show_camera"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    const-string v2, "max_select_count"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    if-eqz p2, :cond_1

    .line 116
    const/4 v1, 0x0

    .line 120
    .local v1, "selectedMode":I
    :goto_0
    const-string v2, "select_count_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->mSelectPath:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->mSelectPath:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 123
    const-string v2, "default_list"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->mSelectPath:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void

    .line 118
    .end local v1    # "selectedMode":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "selectedMode":I
    goto :goto_0
.end method

.method private processCameraImage()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->filePathOriginal:Ljava/lang/String;

    .line 183
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->foldername:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->shouldCreateThumbnails:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    .local v1, "thread":Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;
    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->setListener(Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;)V

    .line 185
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->start()V

    .line 186
    return-void
.end method

.method private processImageFromGallery(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 152
    if-eqz p1, :cond_5

    .line 153
    const-string v3, "select_result"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->mSelectPath:Ljava/util/ArrayList;

    .line 154
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->mSelectPath:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "uri":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    const-string v3, "File path was null"

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->onError(Ljava/lang/String;)V

    .line 179
    .end local v2    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v2    # "uri":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->sanitizeURI(Ljava/lang/String;)V

    .line 162
    move-object v0, v2

    .line 163
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->foldername:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->shouldCreateThumbnails:Z

    invoke-direct {v1, v0, v3, v4}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    .local v1, "thread":Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;
    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->setListener(Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;)V

    .line 165
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 166
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->setContext(Landroid/content/Context;)V

    .line 172
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->start()V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_4

    .line 168
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->setContext(Landroid/content/Context;)V

    goto :goto_1

    .line 169
    :cond_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->appFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->appFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->setContext(Landroid/content/Context;)V

    goto :goto_1

    .line 177
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "thread":Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;
    .end local v2    # "uri":Ljava/lang/String;
    :cond_5
    const-string v3, "Image Uri was null!"

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public choose()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x9

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->listener:Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ImageChooserListener cannot be null. Forgot to set ImageChooserListener???"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->type:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot choose a video in ImageChooserManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->choosePicture(IZ)V

    .line 104
    :goto_0
    return-object v0

    .line 96
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->choosePicture(IZ)V

    goto :goto_0

    .line 99
    :pswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->takePicture()Ljava/lang/String;

    move-result-object v0

    .line 100
    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x123
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->listener:Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->listener:Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;->onError(Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onProcessedImage(Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;)V
    .locals 3
    .param p1, "image"    # Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->listener:Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->activity:Landroid/app/Activity;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->getFilePathOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/d;->a(Landroid/app/Activity;Ljava/io/File;)V

    .line 199
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->listener:Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;->onImageChosen(Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;)V

    .line 201
    :cond_1
    return-void

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->getFilePathOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/d;->a(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_0

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->appFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->appFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->getFilePathOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/d;->a(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_0
.end method

.method public setImageChooserListener(Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->listener:Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;

    .line 47
    return-void
.end method

.method public submit(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 137
    iget v0, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->type:I

    if-eq p1, v0, :cond_0

    .line 138
    const-string v0, "onActivityResult requestCode is different from the type the chooser was initialized with."

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->onError(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 140
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 142
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->processImageFromGallery(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->processCameraImage()V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x123
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public takePicture()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->cameraTakenFolder:Ljava/io/File;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->cameraTakenFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {}, Lcom/jiliguala/niuwa/common/helper/permissions/a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->cameraTakenFolder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->filePathOriginal:Ljava/lang/String;

    .line 55
    const-string v2, "PREFS_KEY_PIC_PATH"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->filePathOriginal:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "output"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->filePathOriginal:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 60
    :cond_0
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/ImageChooserManager;->filePathOriginal:Ljava/lang/String;

    return-object v2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Activity not found"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    new-instance v2, Lcom/jiliguala/niuwa/common/helper/permissions/NoCameraPermissionException;

    const-string v3, "No Camera Permission."

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/common/helper/permissions/NoCameraPermissionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
