.class public Lorg/chromium/content/app/ChildProcessServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final EMPTY_FILE_DESCRIPTOR_INFO:[Lorg/chromium/content/browser/FileDescriptorInfo;

.field private static final MAIN_THREAD_NAME:Ljava/lang/String; = "ChildProcessMain"

.field private static final TAG:Ljava/lang/String; = "ChildProcessService"

.field private static sContext:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivitySemaphore:Ljava/util/concurrent/Semaphore;

.field private final mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

.field private mCallback:Lorg/chromium/content/common/IChildProcessCallback;

.field private mCommandLineParams:[Ljava/lang/String;

.field private mCpuCount:I

.field private mCpuFeatures:J

.field private mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

.field private mHostClassLoader:Ljava/lang/ClassLoader;

.field private mIsBound:Z

.field private mLibraryInitialized:Z

.field private mLibraryProcessType:I

.field private mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

.field private mMainThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-class v0, Lorg/chromium/content/app/ChildProcessServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/app/ChildProcessServiceImpl;->$assertionsDisabled:Z

    .line 50
    new-array v0, v1, [Lorg/chromium/content/browser/FileDescriptorInfo;

    sput-object v0, Lorg/chromium/content/app/ChildProcessServiceImpl;->EMPTY_FILE_DESCRIPTOR_INFO:[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/chromium/content/app/ChildProcessServiceImpl;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    :cond_0
    move v0, v1

    .line 45
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mLibraryInitialized:Z

    .line 69
    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mIsBound:Z

    .line 71
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mActivitySemaphore:Ljava/util/concurrent/Semaphore;

    .line 87
    new-instance v0, Lorg/chromium/content/app/ChildProcessServiceImpl$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/app/ChildProcessServiceImpl$1;-><init>(Lorg/chromium/content/app/ChildProcessServiceImpl;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

    return-void
.end method

.method static synthetic access$002(Lorg/chromium/content/app/ChildProcessServiceImpl;Lorg/chromium/content/common/IChildProcessCallback;)Lorg/chromium/content/common/IChildProcessCallback;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;
    .param p1, "x1"    # Lorg/chromium/content/common/IChildProcessCallback;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/content/app/ChildProcessServiceImpl;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mMainThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/content/app/ChildProcessServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;

    .prologue
    .line 47
    iget v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCpuCount:I

    return v0
.end method

.method static synthetic access$1100(Lorg/chromium/content/app/ChildProcessServiceImpl;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCpuFeatures:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/app/ChildProcessServiceImpl;IJ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/content/app/ChildProcessServiceImpl;->nativeInitChildProcessImpl(Lorg/chromium/content/app/ChildProcessServiceImpl;IJ)V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/content/app/ChildProcessServiceImpl;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mActivitySemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1400()V
    .locals 0

    .prologue
    .line 47
    invoke-static {}, Lorg/chromium/content/app/ChildProcessServiceImpl;->nativeExitChildProcess()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/app/ChildProcessServiceImpl;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCommandLineParams:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/app/ChildProcessServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mIsBound:Z

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/app/ChildProcessServiceImpl;)Lorg/chromium/base/library_loader/Linker;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessServiceImpl;->getLinker()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/app/ChildProcessServiceImpl;)Lorg/chromium/content/app/ChromiumLinkerParams;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/content/app/ChildProcessServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;

    .prologue
    .line 47
    iget v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mLibraryProcessType:I

    return v0
.end method

.method static synthetic access$702(Lorg/chromium/content/app/ChildProcessServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mLibraryInitialized:Z

    return p1
.end method

.method static synthetic access$800(Lorg/chromium/content/app/ChildProcessServiceImpl;)[Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessServiceImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

    return-object v0
.end method

.method static synthetic access$900(IIJJ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 47
    invoke-static/range {p0 .. p5}, Lorg/chromium/content/app/ChildProcessServiceImpl;->nativeRegisterGlobalFileDescriptor(IIJJ)V

    return-void
.end method

.method private createSurfaceTextureSurface(IILandroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I
    .param p3, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 361
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v2, :cond_0

    .line 362
    const-string v2, "ChildProcessService"

    const-string v3, "No callback interface has been provided."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :goto_0
    return-void

    .line 366
    :cond_0
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 368
    .local v1, "surface":Landroid/view/Surface;
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v2, p1, p2, v1}, Lorg/chromium/content/common/IChildProcessCallback;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_1
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ChildProcessService"

    const-string v3, "Unable to call registerSurfaceTextureSurface: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private destroySurfaceTextureSurface(II)V
    .locals 5
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 378
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v1, :cond_0

    .line 379
    const-string v1, "ChildProcessService"

    const-string v2, "No callback interface has been provided."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :goto_0
    return-void

    .line 384
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v1, p1, p2}, Lorg/chromium/content/common/IChildProcessCallback;->unregisterSurfaceTextureSurface(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ChildProcessService"

    const-string v2, "Unable to call unregisterSurfaceTextureSurface: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private establishSurfaceTexturePeer(ILjava/lang/Object;II)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "surfaceObject"    # Ljava/lang/Object;
    .param p3, "primaryID"    # I
    .param p4, "secondaryID"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 312
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v3, :cond_1

    .line 313
    const-string v3, "ChildProcessService"

    const-string v4, "No callback interface has been provided."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    .end local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 317
    .restart local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    .line 318
    .local v2, "surface":Landroid/view/Surface;
    const/4 v1, 0x0

    .line 319
    .local v1, "needRelease":Z
    instance-of v3, p2, Landroid/view/Surface;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 320
    check-cast v2, Landroid/view/Surface;

    .line 329
    .end local p2    # "surfaceObject":Ljava/lang/Object;
    :goto_1
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v3, p1, v2, p3, p4}, Lorg/chromium/content/common/IChildProcessCallback;->establishSurfacePeer(ILandroid/view/Surface;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 321
    .restart local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_2
    instance-of v3, p2, Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_3

    .line 322
    new-instance v2, Landroid/view/Surface;

    .end local v2    # "surface":Landroid/view/Surface;
    check-cast p2, Landroid/graphics/SurfaceTexture;

    .end local p2    # "surfaceObject":Ljava/lang/Object;
    invoke-direct {v2, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 323
    .restart local v2    # "surface":Landroid/view/Surface;
    const/4 v1, 0x1

    goto :goto_1

    .line 325
    .restart local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_3
    const-string v3, "ChildProcessService"

    const-string v4, "Not a valid surfaceObject: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    .end local p2    # "surfaceObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "ChildProcessService"

    const-string v4, "Unable to call establishSurfaceTexturePeer: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 334
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 335
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_4
    throw v3
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lorg/chromium/content/app/ChildProcessServiceImpl;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private getLinker()Lorg/chromium/base/library_loader/Linker;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->areTestsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-boolean v0, Lorg/chromium/content/app/ChildProcessServiceImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    iget v0, v0, Lorg/chromium/content/app/ChromiumLinkerParams;->mLinkerImplementationForTesting:I

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    iget-object v1, v1, Lorg/chromium/content/app/ChromiumLinkerParams;->mTestRunnerClassNameForTesting:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/base/library_loader/Linker;->setupForTesting(ILjava/lang/String;)V

    .line 83
    :cond_1
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    return-object v0
.end method

.method private getSurfaceTextureSurface(I)Landroid/view/Surface;
    .locals 6
    .param p1, "surfaceTextureId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 393
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v2, :cond_0

    .line 394
    const-string v2, "ChildProcessService"

    const-string v3, "No callback interface has been provided."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    :goto_0
    return-object v1

    .line 399
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v2, p1}, Lorg/chromium/content/common/IChildProcessCallback;->getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/common/SurfaceWrapper;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ChildProcessService"

    const-string v3, "Unable to call getSurfaceTextureSurface: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getViewSurface(I)Landroid/view/Surface;
    .locals 7
    .param p1, "surfaceId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 343
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v3, :cond_1

    .line 344
    const-string v3, "ChildProcessService"

    const-string v4, "No callback interface has been provided."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :cond_0
    :goto_0
    return-object v2

    .line 349
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v3, p1}, Lorg/chromium/content/common/IChildProcessCallback;->getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v1

    .line 350
    .local v1, "wrapper":Lorg/chromium/content/common/SurfaceWrapper;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content/common/SurfaceWrapper;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 351
    .end local v1    # "wrapper":Lorg/chromium/content/common/SurfaceWrapper;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ChildProcessService"

    const-string v4, "Unable to call getViewSurface: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static native nativeExitChildProcess()V
.end method

.method private static native nativeInitChildProcessImpl(Lorg/chromium/content/app/ChildProcessServiceImpl;IJ)V
.end method

.method private static native nativeRegisterGlobalFileDescriptor(IIJJ)V
.end method

.method private native nativeShutdownMainThread()V
.end method


# virtual methods
.method public bind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lorg/chromium/content/app/ChildProcessServiceImpl;->initializeParams(Landroid/content/Intent;)V

    .line 245
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

    return-object v0
.end method

.method public create(Landroid/content/Context;Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostBrowserContext"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mHostClassLoader:Ljava/lang/ClassLoader;

    .line 116
    const-string v0, "ChildProcessService"

    const-string v1, "Creating new ChildProcessService pid=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    sget-object v0, Lorg/chromium/content/app/ChildProcessServiceImpl;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal child process reuse."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    sget-object v0, Lorg/chromium/content/app/ChildProcessServiceImpl;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 123
    invoke-static {p1}, Lorg/chromium/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/chromium/content/app/ChildProcessServiceImpl$2;

    invoke-direct {v1, p0, p2}, Lorg/chromium/content/app/ChildProcessServiceImpl$2;-><init>(Lorg/chromium/content/app/ChildProcessServiceImpl;Landroid/content/Context;)V

    const-string v2, "ChildProcessMain"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mMainThread:Ljava/lang/Thread;

    .line 213
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method

.method public destroy()V
    .locals 5
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "DM_EXIT"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 218
    const-string v0, "ChildProcessService"

    const-string v1, "Destroying ChildProcessService pid=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mActivitySemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 241
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mMainThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 229
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mLibraryInitialized:Z

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 237
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessServiceImpl;->nativeShutdownMainThread()V

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method getServiceInfo(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 263
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mHostClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 264
    iget-object v4, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mMainThread:Ljava/lang/Thread;

    monitor-enter v4

    .line 267
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCommandLineParams:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 268
    const-string v3, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCommandLineParams:[Ljava/lang/String;

    .line 272
    :cond_0
    sget-boolean v3, Lorg/chromium/content/app/ChildProcessServiceImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCommandLineParams:[Ljava/lang/String;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 295
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 273
    :cond_1
    :try_start_1
    const-string v3, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCpuCount:I

    .line 274
    const-string v3, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCpuFeatures:J

    .line 275
    sget-boolean v3, Lorg/chromium/content/app/ChildProcessServiceImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCpuCount:I

    if-gtz v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 276
    :cond_2
    const-string v3, "com.google.android.apps.chrome.extra.extraFiles"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 278
    .local v0, "fdInfosAsParcelable":[Landroid/os/Parcelable;
    if-eqz v0, :cond_4

    .line 281
    array-length v3, v0

    new-array v3, v3, [Lorg/chromium/content/browser/FileDescriptorInfo;

    iput-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 282
    const/4 v3, 0x0

    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    :goto_0
    const-string v3, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 290
    .local v2, "sharedRelros":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 291
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessServiceImpl;->getLinker()Lorg/chromium/base/library_loader/Linker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/chromium/base/library_loader/Linker;->useSharedRelros(Landroid/os/Bundle;)V

    .line 292
    const/4 v2, 0x0

    .line 294
    :cond_3
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit v4

    .line 296
    return-void

    .line 284
    .end local v2    # "sharedRelros":Landroid/os/Bundle;
    :cond_4
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCommandLineParams:[Ljava/lang/String;

    const-string v5, "type"

    invoke-static {v3, v5}, Lorg/chromium/content/common/ContentSwitches;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "processType":Ljava/lang/String;
    sget-boolean v3, Lorg/chromium/content/app/ChildProcessServiceImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    const-string v3, "download"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 287
    :cond_5
    sget-object v3, Lorg/chromium/content/app/ChildProcessServiceImpl;->EMPTY_FILE_DESCRIPTOR_INFO:[Lorg/chromium/content/browser/FileDescriptorInfo;

    iput-object v3, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method initializeParams(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mMainThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 250
    :try_start_0
    const-string v0, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mCommandLineParams:[Ljava/lang/String;

    .line 254
    new-instance v0, Lorg/chromium/content/app/ChromiumLinkerParams;

    invoke-direct {v0, p1}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    .line 255
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessCreationParams;->getLibraryProcessType(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mLibraryProcessType:I

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mIsBound:Z

    .line 257
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessServiceImpl;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 258
    monitor-exit v1

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method