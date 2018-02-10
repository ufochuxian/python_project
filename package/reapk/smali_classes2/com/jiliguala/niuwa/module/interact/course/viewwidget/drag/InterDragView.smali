.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
.super Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/IDragView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;,
        Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;
    }
.end annotation


# static fields
.field private static final MIN_FLING_VELOCITY:I = 0x3e8

.field static final MSG_SCALE_DOWN:I = 0x1004

.field static final MSG_SCALE_UP:I = 0x1003

.field static final MSG_START_CHILD_SHAKE:I = 0x1001

.field static final MSG_START_SHAKE:I = 0x1000

.field static final MSG_STOP_SHAKE:I = 0x1002

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimHandler:Landroid/os/Handler;

.field private mCHandlerThread:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

.field private mDragCount:I

.field private mDragHelper:Landroid/support/v4/widget/ap;

.field private mDragViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

.field private mFolderName:Ljava/lang/String;

.field private mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;",
            ">;"
        }
    .end annotation
.end field

.field mTransBmp:Landroid/graphics/Bitmap;

.field private mcb:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mcb:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->startChildVibrate()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mAnimHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Landroid/view/View;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->scale(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .prologue
    .line 42
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragCount:I

    return p1
.end method

.method static synthetic access$708(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)I
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .prologue
    .line 42
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Landroid/support/v4/widget/ap;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragHelper:Landroid/support/v4/widget/ap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 93
    .local v0, "density":F
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$1;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mcb:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;

    .line 94
    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mcb:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;

    invoke-static {p0, v1, v2}, Landroid/support/v4/widget/ap;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ap$a;)Landroid/support/v4/widget/ap;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragHelper:Landroid/support/v4/widget/ap;

    .line 95
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragHelper:Landroid/support/v4/widget/ap;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ap;->a(F)V

    .line 97
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mCHandlerThread:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    .line 98
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mCHandlerThread:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->start()V

    .line 99
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mCHandlerThread:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mCHandlerThread:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mAnimHandler:Landroid/os/Handler;

    .line 101
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 114
    return-void
.end method

.method private quitThread()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mCHandlerThread:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mAnimHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 185
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mCHandlerThread:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->quitSafely()Z

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mCHandlerThread:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->quit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private recycleBmp()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mTransBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mTransBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mTransBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :catchall_0
    move-exception v0

    throw v0

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private scale(Landroid/view/View;FF)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "begin"    # F
    .param p3, "end"    # F

    .prologue
    .line 229
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Landroid/view/View;F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method private startChildVibrate()V
    .locals 5

    .prologue
    .line 252
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 253
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 254
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mAnimHandler:Landroid/os/Handler;

    const/16 v4, 0x1001

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 255
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragHelper:Landroid/support/v4/widget/ap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ap;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->postInvalidate()V

    .line 138
    :cond_0
    return-void
.end method

.method public getCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDragDuringMusic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sound"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->onDetachedFromWindow()V

    .line 177
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->quitThread()V

    .line 178
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->recycleBmp()V

    .line 179
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->onFinishInflate()V

    .line 143
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragHelper:Landroid/support/v4/widget/ap;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ap;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragHelper:Landroid/support/v4/widget/ap;

    invoke-virtual {v0}, Landroid/support/v4/widget/ap;->g()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMatchResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "jumpId"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;->onGainResult(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragHelper:Landroid/support/v4/widget/ap;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ap;->b(Landroid/view/MotionEvent;)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public releaseMediaPlay()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->releaseMeidaPlayer()V

    .line 737
    :cond_0
    return-void
.end method

.method public reportScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "score"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    :cond_0
    return-void
.end method

.method public scaleDown(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mAnimHandler:Landroid/os/Handler;

    const/16 v2, 0x1004

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mAnimHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    return-void
.end method

.method public scaleUp(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mAnimHandler:Landroid/os/Handler;

    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mAnimHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    return-void
.end method

.method public setDragViewCtrlr(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;)V
    .locals 0
    .param p1, "dragViewCtrlr"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mDragViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    .line 79
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mFolderName:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setInteractListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
    .locals 1
    .param p1, "interactListener"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 83
    return-object p0
.end method

.method public startVibrate()V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mAnimHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 210
    return-void
.end method

.method public stopVibrate()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mAnimHandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    return-void
.end method
