.class public Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;
    }
.end annotation


# static fields
.field public static final EXTRA_DEFAULT_SELECTED_LIST:Ljava/lang/String; = "default_result"

.field public static final EXTRA_SELECT_COUNT:Ljava/lang/String; = "max_select_count"

.field public static final EXTRA_SELECT_MODE:Ljava/lang/String; = "select_count_mode"

.field public static final EXTRA_SHOW_CAMERA:Ljava/lang/String; = "show_camera"

.field private static final LOADER_ALL:I = 0x0

.field private static final LOADER_CATEGORY:I = 0x1

.field public static final MODE_MULTI:I = 0x1

.field public static final MODE_SINGLE:I = 0x0

.field private static final REQUEST_CAMERA:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MultiImageSelector"


# instance fields
.field private hasFolderGened:Z

.field private mCallback:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;

.field private mCategoryText:Landroid/widget/TextView;

.field private mDesireImageCount:I

.field private mFolderAdapter:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;

.field private mGridHeight:I

.field private mGridView:Landroid/widget/GridView;

.field private mGridWidth:I

.field private mImageAdapter:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

.field private mIsShowCamera:Z

.field private mLoaderCallback:Landroid/support/v4/app/as$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/as$a",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupAnchorView:Landroid/view/View;

.field private mPreviewBtn:Landroid/widget/Button;

.field private mResultFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeLineText:Landroid/widget/TextView;

.field private mTmpFile:Ljava/io/File;

.field private resultList:Ljava/util/ArrayList;
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
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;

    .line 106
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->hasFolderGened:Z

    .line 107
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mIsShowCamera:Z

    .line 112
    new-instance v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mLoaderCallback:Landroid/support/v4/app/as$a;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->hasFolderGened:Z

    return v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->hasFolderGened:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mResultFolder:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->selectImageFromGrid(Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mFolderAdapter:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mTimeLineText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridWidth:I

    return p1
.end method

.method static synthetic access$802(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->showCameraAction()V

    return-void
.end method

.method private selectImageFromGrid(Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;I)V
    .locals 4
    .param p1, "image"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    .param p2, "mode"    # I

    .prologue
    const v3, 0x7f0f016a

    const/4 v2, 0x1

    .line 504
    if-eqz p1, :cond_1

    .line 506
    if-ne p2, v2, :cond_5

    .line 507
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 511
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;->onImageUnselected(Ljava/lang/String;)V

    .line 533
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->select(Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;)V

    .line 541
    :cond_1
    :goto_2
    return-void

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 514
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 521
    :cond_3
    iget v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mDesireImageCount:I

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 522
    const v0, 0x7f0f0139

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_2

    .line 526
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 528
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;->onImageSelected(Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :cond_5
    if-nez p2, :cond_1

    .line 536
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;->onSingleImageSelected(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private showCameraAction()V
    .locals 3

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "cameraIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/FileUtils;->createTmpFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    .line 492
    const-string v1, "output"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 493
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    const v1, 0x7f0f013a

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 416
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/jiliguala/niuwa/common/util/d;->a(Landroid/app/Activity;Ljava/io/File;)V

    .line 418
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/as;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mLoaderCallback:Landroid/support/v4/app/as$a;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/as;->a(ILandroid/os/Bundle;Landroid/support/v4/app/as$a;)Landroid/support/v4/content/p;

    .line 419
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 423
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 425
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 426
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;->onCameraShot(Ljava/io/File;)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mTmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 200
    :try_start_0
    check-cast p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCallback:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "The Activity must implement MultiImageSelectorFragment.Callback interface..."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$7;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 478
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 480
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 208
    const v0, 0x7f0b00bc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 213
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "max_select_count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mDesireImageCount:I

    .line 219
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "select_count_mode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, "mode":I
    if-ne v0, v2, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "default_result"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 224
    .local v1, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 225
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    .line 230
    .end local v1    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "show_camera"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mIsShowCamera:Z

    .line 231
    new-instance v4, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-boolean v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mIsShowCamera:Z

    invoke-direct {v4, v5, v6}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    .line 233
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    if-ne v0, v2, :cond_3

    :goto_0
    invoke-virtual {v4, v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->showSelectIndicator(Z)V

    .line 235
    const v2, 0x7f090218

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPopupAnchorView:Landroid/view/View;

    .line 237
    const v2, 0x7f090574

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mTimeLineText:Landroid/widget/TextView;

    .line 239
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mTimeLineText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    const v2, 0x7f09010c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;

    .line 243
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;

    const v4, 0x7f0f00d0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mCategoryText:Landroid/widget/TextView;

    new-instance v4, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$2;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$2;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v2, 0x7f0903fb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    .line 265
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    const v4, 0x7f0f016a

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 267
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mPreviewBtn:Landroid/widget/Button;

    new-instance v4, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$3;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$3;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const v2, 0x7f090241

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    .line 277
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    new-instance v4, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$4;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 307
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mImageAdapter:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 310
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$5;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 334
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;

    invoke-direct {v3, p0, v0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$6;-><init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;I)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 354
    new-instance v2, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->mFolderAdapter:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;

    .line 355
    return-void

    :cond_3
    move v2, v3

    .line 233
    goto/16 :goto_0
.end method
