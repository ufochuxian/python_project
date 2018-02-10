.class public Lorg/xwalk/core/XWalkInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkInitializer$1;,
        Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;,
        Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkLib"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitListener:Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

.field private mIsXWalkReady:Z


# direct methods
.method public constructor <init>(Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;Landroid/content/Context;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lorg/xwalk/core/XWalkInitializer;->mInitListener:Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

    .line 170
    iput-object p2, p0, Lorg/xwalk/core/XWalkInitializer;->mContext:Landroid/content/Context;

    .line 172
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->prepareToInit(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method static synthetic access$100(Lorg/xwalk/core/XWalkInitializer;)Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkInitializer;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer;->mInitListener:Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

    return-object v0
.end method

.method static synthetic access$202(Lorg/xwalk/core/XWalkInitializer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/XWalkInitializer;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lorg/xwalk/core/XWalkInitializer;->mIsXWalkReady:Z

    return p1
.end method

.method static synthetic access$300(Lorg/xwalk/core/XWalkInitializer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkInitializer;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancelInit()Z
    .locals 2

    .prologue
    .line 203
    const-string v0, "XWalkLib"

    const-string v1, "Cancel by XWalkInitializer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->cancelDecompress()Z

    move-result v0

    return v0
.end method

.method public initAsync()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-boolean v1, p0, Lorg/xwalk/core/XWalkInitializer;->mIsXWalkReady:Z

    if-eqz v1, :cond_0

    .line 194
    :goto_0
    return v0

    .line 186
    :cond_0
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isInitializing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    :cond_1
    const-string v1, "XWalkLib"

    const-string v2, "Other initialization or download is proceeding"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_2
    const-string v0, "XWalkLib"

    const-string v1, "Initialized by XWalkInitializer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;-><init>(Lorg/xwalk/core/XWalkInitializer;Lorg/xwalk/core/XWalkInitializer$1;)V

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startDecompress(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;)V

    .line 193
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer;->mInitListener:Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;->onXWalkInitStarted()V

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDownloadMode()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkInitializer;->mIsXWalkReady:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedMode()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkInitializer;->mIsXWalkReady:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isSharedLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isXWalkReady()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkInitializer;->mIsXWalkReady:Z

    return v0
.end method
