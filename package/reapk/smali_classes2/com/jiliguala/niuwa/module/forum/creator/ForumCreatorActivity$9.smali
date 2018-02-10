.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/album/camera/IChooserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->doTakeOrChoosePhoto(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9$1;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public onImageChosen(Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;)V
    .locals 6
    .param p1, "chosenImage"    # Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;

    .prologue
    .line 339
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->getFilePathOriginal()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPicturePath:Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->getMediaWidth()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "width":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->getMediaHeight()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "height":Ljava/lang/String;
    const/4 v0, 0x0

    .line 345
    .local v0, "h":I
    const/4 v2, 0x0

    .line 347
    .local v2, "w":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 352
    :goto_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 358
    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$9;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPicturePath:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;Ljava/lang/String;)V

    .line 359
    return-void

    .line 353
    :catch_0
    move-exception v4

    goto :goto_1

    .line 348
    :catch_1
    move-exception v4

    goto :goto_0
.end method
