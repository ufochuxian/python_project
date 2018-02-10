.class public Lorg/xwalk/core/XWalkUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkUpdater$BackgroundListener;,
        Lorg/xwalk/core/XWalkUpdater$ForegroundListener;,
        Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;,
        Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    }
.end annotation


# static fields
.field private static final ANDROID_MARKET_DETAILS:Ljava/lang/String; = "market://details?id="

.field private static final GOOGLE_PLAY_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static final TAG:Ljava/lang/String; = "XWalkLib"


# instance fields
.field private mBackgroundUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

.field private mCancelCommand:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

.field private mDownloadCommand:Ljava/lang/Runnable;

.field private mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater;->mBackgroundUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    .line 329
    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    .line 330
    return-void
.end method

.method public constructor <init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/content/Context;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater;->mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    .line 303
    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    .line 304
    new-instance v0, Lorg/xwalk/core/XWalkDialogManager;

    invoke-direct {v0, p2}, Lorg/xwalk/core/XWalkDialogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    .line 305
    return-void
.end method

.method public constructor <init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/content/Context;Lorg/xwalk/core/XWalkDialogManager;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dialogManager"    # Lorg/xwalk/core/XWalkDialogManager;

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater;->mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    .line 317
    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    .line 318
    iput-object p3, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    .line 319
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/XWalkUpdater;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 240
    invoke-direct {p0}, Lorg/xwalk/core/XWalkUpdater;->downloadXWalkApk()V

    return-void
.end method

.method static synthetic access$100(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xwalk/core/XWalkUpdater;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lorg/xwalk/core/XWalkUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkDialogManager;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    return-object v0
.end method

.method static synthetic access$700(Lorg/xwalk/core/XWalkUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDownloadCommand:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mBackgroundUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    return-object v0
.end method

.method static synthetic access$900(Lorg/xwalk/core/XWalkUpdater;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkUpdater;->verifyDownloadedXWalkRuntime(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private downloadXWalkApk()V
    .locals 13

    .prologue
    .line 421
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getXWalkApkUrl()Ljava/lang/String;

    move-result-object v9

    .line 422
    .local v9, "url":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 423
    new-instance v10, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;-><init>(Lorg/xwalk/core/XWalkUpdater;Lorg/xwalk/core/XWalkUpdater$1;)V

    iget-object v11, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v10, v11, v9}, Lorg/xwalk/core/XWalkLibraryLoader;->startDownloadManager(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 487
    :goto_0
    return-void

    .line 427
    :cond_0
    const-string v5, "org.xwalk.core"

    .line 428
    .local v5, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v4, "intent":Landroid/content/Intent;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "market://details?id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 430
    iget-object v10, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x20000

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 433
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v8, "supportedStores":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 436
    .local v0, "hasGooglePlay":Z
    const-string v10, "XWalkLib"

    const-string v11, "Available Stores:"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 438
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const-string v10, "XWalkLib"

    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.android.vending"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v0, v10

    .line 441
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lorg/xwalk/core/XWalkUpdater;->getStoreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 442
    .local v7, "storeName":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 443
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 444
    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 450
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "storeName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 451
    iget-object v10, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    iget-object v11, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Lorg/xwalk/core/XWalkDialogManager;->showUnsupportedStore(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 455
    :cond_4
    if-nez v0, :cond_5

    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isIaDevice()Z

    move-result v10

    if-nez v10, :cond_7

    .line 456
    :cond_5
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->is64bitApp()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 457
    const-string v5, "org.xwalk.core64"

    .line 469
    :goto_2
    const-string v10, "XWalkLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package name of Crosswalk to download: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "market://details?id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 471
    move-object v6, v4

    .line 473
    .local v6, "storeIntent":Landroid/content/Intent;
    if-eqz v0, :cond_9

    const-string v10, "com.android.vending"

    invoke-direct {p0, v10}, Lorg/xwalk/core/XWalkUpdater;->getStoreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 475
    .restart local v7    # "storeName":Ljava/lang/String;
    :goto_3
    const-string v10, "XWalkLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Supported Stores: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v10, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    new-instance v11, Lorg/xwalk/core/XWalkUpdater$3;

    invoke-direct {v11, p0, v6}, Lorg/xwalk/core/XWalkUpdater$3;-><init>(Lorg/xwalk/core/XWalkUpdater;Landroid/content/Intent;)V

    invoke-virtual {v10, v11, v7}, Lorg/xwalk/core/XWalkDialogManager;->showSelectStore(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    .end local v6    # "storeIntent":Landroid/content/Intent;
    .end local v7    # "storeName":Ljava/lang/String;
    :cond_6
    const-string v5, "org.xwalk.core"

    goto :goto_2

    .line 462
    :cond_7
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->is64bitApp()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 463
    const-string v5, "org.xwalk.core64.ia"

    goto :goto_2

    .line 465
    :cond_8
    const-string v5, "org.xwalk.core.ia"

    goto :goto_2

    .line 473
    .restart local v6    # "storeIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method

.method private getStoreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "storePackage"    # Ljava/lang/String;

    .prologue
    .line 630
    const-string v0, "com.android.vending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    sget v1, Lorg/xwalk/core/R$string;->google_play_store:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyDownloadedXWalkRuntime(Ljava/lang/String;)Z
    .locals 8
    .param p1, "libFile"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x40

    const/4 v4, 0x0

    .line 593
    iget-object v5, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 595
    .local v3, "runtimePkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_0

    .line 596
    const-string v5, "XWalkLib"

    const-string v6, "The downloaded XWalkRuntimeLib.apk is invalid!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_0
    return v4

    .line 600
    :cond_0
    const/4 v0, 0x0

    .line 602
    .local v0, "appPkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 608
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v5, :cond_2

    .line 609
    :cond_1
    const-string v5, "XWalkLib"

    const-string v6, "No signature in package info"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 613
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-eq v5, v6, :cond_3

    .line 614
    const-string v5, "XWalkLib"

    const-string v6, "signatures length not equal"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 619
    const-string v5, "XWalkLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking signature "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v2

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 621
    const-string v5, "XWalkLib"

    const-string v6, "signatures do not match"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 625
    :cond_5
    const-string v4, "XWalkLib"

    const-string v5, "Signature check passed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelBackgroundDownload()Z
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->cancelHttpDownload()Z

    move-result v0

    return v0
.end method

.method public dismissDialog()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->isShowingDialog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    :cond_0
    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0

    .line 397
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 398
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setXWalkApkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 408
    invoke-static {p1}, Lorg/xwalk/core/XWalkEnvironment;->setXWalkApkUrl(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public updateXWalkRuntime()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isInitializing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isDownloading()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    :cond_0
    const-string v3, "XWalkLib"

    const-string v4, "Other initialization or download is proceeding"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return v2

    .line 350
    :cond_1
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isLibraryReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    const-string v3, "XWalkLib"

    const-string v4, "Initialization has been completed. Do not need to update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->getLibraryStatus()I

    move-result v0

    .line 357
    .local v0, "status":I
    if-nez v0, :cond_3

    .line 358
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Must invoke XWalkInitializer.initAsync() first"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    :cond_3
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    if-eqz v2, :cond_4

    .line 362
    new-instance v2, Lorg/xwalk/core/XWalkUpdater$1;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkUpdater$1;-><init>(Lorg/xwalk/core/XWalkUpdater;)V

    iput-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mDownloadCommand:Ljava/lang/Runnable;

    .line 368
    new-instance v2, Lorg/xwalk/core/XWalkUpdater$2;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkUpdater$2;-><init>(Lorg/xwalk/core/XWalkUpdater;)V

    iput-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    .line 376
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    iget-object v4, p0, Lorg/xwalk/core/XWalkUpdater;->mDownloadCommand:Ljava/lang/Runnable;

    invoke-virtual {v2, v0, v3, v4}, Lorg/xwalk/core/XWalkDialogManager;->showInitializationError(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 384
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 377
    :cond_4
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mBackgroundUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    if-eqz v2, :cond_5

    .line 378
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getXWalkApkUrl()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;-><init>(Lorg/xwalk/core/XWalkUpdater;Lorg/xwalk/core/XWalkUpdater$1;)V

    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lorg/xwalk/core/XWalkLibraryLoader;->startHttpDownload(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 381
    .end local v1    # "url":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Update listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
