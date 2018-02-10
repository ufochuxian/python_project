.class public Lorg/xwalk/core/internal/XWalkUIClientInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkUIClientInternal$9;,
        Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;,
        Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;,
        Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;,
        Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    }
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final INVALID_ORIENTATION:I

.field private mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

.field private mContext:Landroid/content/Context;

.field private mCustomViewCallback:Lorg/xwalk/core/internal/CustomViewCallbackInternal;

.field private mCustomXWalkView:Landroid/view/View;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsFullscreen:Z

.field private mOriginalForceNotFullscreen:Z

.field private mOriginalFullscreen:Z

.field private mPreOrientation:I

.field private mPromptText:Landroid/widget/EditText;

.field private mSystemUiFlag:I

.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/xwalk/core/internal/XWalkUIClientInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v1, -0x2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mIsFullscreen:Z

    .line 44
    iput v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->INVALID_ORIENTATION:I

    .line 45
    iput v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPreOrientation:I

    .line 66
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 68
    const/16 v0, 0x700

    iput v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mSystemUiFlag:I

    .line 72
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkUIClientInternal;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method private addContentView(Landroid/view/View;Lorg/xwalk/core/internal/CustomViewCallbackInternal;)Landroid/app/Activity;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/xwalk/core/internal/CustomViewCallbackInternal;

    .prologue
    const/4 v8, -0x1

    .line 543
    const/4 v1, 0x0

    .line 545
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v4}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 546
    .local v2, "context":Landroid/content/Context;
    instance-of v4, v2, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 547
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mCustomXWalkView:Landroid/view/View;

    if-nez v4, :cond_1

    if-nez v1, :cond_3

    .line 553
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/xwalk/core/internal/CustomViewCallbackInternal;->onCustomViewHidden()V

    .line 554
    :cond_2
    const/4 v1, 0x0

    .line 570
    .end local v1    # "activity":Landroid/app/Activity;
    :goto_1
    return-object v1

    .line 557
    .restart local v1    # "activity":Landroid/app/Activity;
    :cond_3
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mCustomXWalkView:Landroid/view/View;

    .line 558
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mCustomViewCallback:Lorg/xwalk/core/internal/CustomViewCallbackInternal;

    .line 559
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v4, :cond_4

    .line 560
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkContentsClient;->onToggleFullscreen(Z)V

    .line 564
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 565
    .local v3, "decor":Landroid/widget/FrameLayout;
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mCustomXWalkView:Landroid/view/View;

    const/4 v5, 0x0

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v8, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 549
    .end local v3    # "decor":Landroid/widget/FrameLayout;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "messageType"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "initiator"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            ">;)Z"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 86
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onDidChangeThemeColor(Lorg/xwalk/core/internal/XWalkViewInternal;I)V
    .locals 3
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 94
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 96
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/chromium/base/ApiCompatibilityUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 97
    invoke-static {v0, v2, v2, p2}, Lorg/chromium/base/ApiCompatibilityUtils;->setTaskDescription(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewInternal;Z)V
    .locals 8
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "enterFullscreen"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/16 v7, 0x800

    const/16 v6, 0x400

    const/16 v5, 0x13

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 198
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 201
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p2, :cond_5

    .line 202
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2

    .line 204
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalForceNotFullscreen:Z

    .line 205
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 210
    :goto_1
    iget-boolean v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mIsFullscreen:Z

    if-nez v2, :cond_0

    .line 211
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_3

    .line 212
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 213
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    iput v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mSystemUiFlag:I

    .line 214
    const/16 v2, 0x1706

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 230
    .end local v1    # "decorView":Landroid/view/View;
    :goto_2
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mIsFullscreen:Z

    goto :goto_0

    .line 208
    :cond_2
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalForceNotFullscreen:Z

    goto :goto_1

    .line 222
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_4

    .line 224
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalFullscreen:Z

    goto :goto_2

    .line 226
    :cond_4
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalFullscreen:Z

    .line 227
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2

    .line 233
    :cond_5
    iget-boolean v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalForceNotFullscreen:Z

    if-eqz v2, :cond_6

    .line 234
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->addFlags(I)V

    .line 237
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_8

    .line 238
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mSystemUiFlag:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 245
    :cond_7
    :goto_3
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mIsFullscreen:Z

    goto :goto_0

    .line 241
    :cond_8
    iget-boolean v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalFullscreen:Z

    if-nez v2, :cond_7

    .line 242
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_3
.end method

.method public onHideCustomView()V
    .locals 6
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 618
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mCustomXWalkView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v2, :cond_2

    .line 621
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkContentsClient;->onToggleFullscreen(Z)V

    .line 624
    :cond_2
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 626
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 627
    .local v1, "decor":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mCustomXWalkView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 628
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mCustomViewCallback:Lorg/xwalk/core/internal/CustomViewCallbackInternal;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mCustomViewCallback:Lorg/xwalk/core/internal/CustomViewCallbackInternal;

    invoke-interface {v2}, Lorg/xwalk/core/internal/CustomViewCallbackInternal;->onCustomViewHidden()V

    .line 630
    :cond_3
    iget v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPreOrientation:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPreOrientation:I

    const/4 v3, -0x1

    if-lt v2, v3, :cond_4

    iget v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPreOrientation:I

    const/16 v3, 0xe

    if-gt v2, v3, :cond_4

    .line 633
    iget v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPreOrientation:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 634
    iput v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPreOrientation:I

    .line 637
    :cond_4
    iput-object v5, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mCustomXWalkView:Landroid/view/View;

    .line 638
    iput-object v5, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mCustomViewCallback:Lorg/xwalk/core/internal/CustomViewCallbackInternal;

    goto :goto_0
.end method

.method public onIconAvailable(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startDownload"    # Landroid/os/Message;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 109
    return-void
.end method

.method public onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 138
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 140
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 173
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$9;->$SwitchMap$org$xwalk$core$internal$XWalkUIClientInternal$JavascriptMessageTypeInternal:[I

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 186
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 175
    :pswitch_0
    invoke-virtual {p0, p1, p3, p4, p6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsAlert(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 177
    :pswitch_1
    invoke-virtual {p0, p1, p3, p4, p6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsConfirm(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 179
    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsPrompt(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_0

    .line 182
    :pswitch_3
    invoke-virtual {p0, p1, p3, p4, p6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsConfirm(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_0

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onJsAlert(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 412
    move-object v1, p4

    .line 413
    .local v1, "fResult":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/internal/R$string;->js_alert_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientInternal$2;

    invoke-direct {v4, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$2;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/xwalk/core/internal/XWalkUIClientInternal$1;

    invoke-direct {v3, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$1;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    .line 432
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 433
    const/4 v2, 0x0

    return v2
.end method

.method public onJsConfirm(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 450
    move-object v1, p4

    .line 451
    .local v1, "fResult":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/internal/R$string;->js_confirm_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientInternal$5;

    invoke-direct {v4, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$5;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientInternal$4;

    invoke-direct {v4, p0}, Lorg/xwalk/core/internal/XWalkUIClientInternal$4;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/xwalk/core/internal/XWalkUIClientInternal$3;

    invoke-direct {v3, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$3;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    .line 480
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 481
    const/4 v2, 0x0

    return v2
.end method

.method public onJsPrompt(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 499
    move-object v1, p5

    .line 500
    .local v1, "fResult":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 501
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/internal/R$string;->js_prompt_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientInternal$8;

    invoke-direct {v4, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$8;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientInternal$7;

    invoke-direct {v4, p0}, Lorg/xwalk/core/internal/XWalkUIClientInternal$7;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/xwalk/core/internal/XWalkUIClientInternal$6;

    invoke-direct {v3, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$6;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 527
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    .line 528
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 529
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 532
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 533
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    .line 534
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 535
    return v5
.end method

.method public onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 381
    return-void
.end method

.method public onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 396
    return-void
.end method

.method public onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "title"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 350
    return-void
.end method

.method public onRequestFocus(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 129
    return-void
.end method

.method public onScaleChanged(Lorg/xwalk/core/internal/XWalkViewInternal;FF)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 276
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILorg/xwalk/core/internal/CustomViewCallbackInternal;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Lorg/xwalk/core/internal/CustomViewCallbackInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 598
    invoke-direct {p0, p1, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->addContentView(Landroid/view/View;Lorg/xwalk/core/internal/CustomViewCallbackInternal;)Landroid/app/Activity;

    move-result-object v0

    .line 599
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 603
    .local v1, "orientation":I
    if-eq p2, v1, :cond_0

    const/4 v2, -0x1

    if-lt p2, v2, :cond_0

    const/16 v2, 0xe

    if-gt p2, v2, :cond_0

    .line 606
    iput v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPreOrientation:I

    .line 607
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Lorg/xwalk/core/internal/CustomViewCallbackInternal;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/xwalk/core/internal/CustomViewCallbackInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 583
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->addContentView(Landroid/view/View;Lorg/xwalk/core/internal/CustomViewCallbackInternal;)Landroid/app/Activity;

    .line 584
    return-void
.end method

.method public onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 311
    return-void
.end method

.method public openFileChooser(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p3, "acceptType"    # Ljava/lang/String;
    .param p4, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 264
    .local p2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method setContentsClient(Lorg/xwalk/core/internal/XWalkContentsClient;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkContentsClient;

    .prologue
    .line 539
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    .line 540
    return-void
.end method

.method public shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method
