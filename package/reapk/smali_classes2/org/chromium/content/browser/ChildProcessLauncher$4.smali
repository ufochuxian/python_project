.class final Lorg/chromium/content/browser/ChildProcessLauncher$4;
.super Lorg/chromium/content/common/IChildProcessCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackType:I

.field final synthetic val$childProcessId:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 894
    iput p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    iput p2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$childProcessId:I

    invoke-direct {p0}, Lorg/chromium/content/common/IChildProcessCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public establishSurfacePeer(ILandroid/view/Surface;II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "primaryID"    # I
    .param p4, "secondaryID"    # I

    .prologue
    .line 906
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 907
    const-string v0, "ChildProcLauncher"

    const-string v1, "Illegal callback for non-GPU process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1600(ILandroid/view/Surface;II)V

    goto :goto_0
.end method

.method public getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 3
    .param p1, "surfaceTextureId"    # I

    .prologue
    .line 953
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 954
    const-string v0, "ChildProcLauncher"

    const-string v1, "Illegal callback for non-renderer process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    const/4 v0, 0x0

    .line 958
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$childProcessId:I

    invoke-static {p1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$2000(II)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 5
    .param p1, "surfaceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 917
    iget v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 918
    const-string v2, "ChildProcLauncher"

    const-string v3, "Illegal callback for non-GPU process."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    :cond_0
    :goto_0
    return-object v1

    .line 921
    :cond_1
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1700(I)Landroid/view/Surface;

    move-result-object v0

    .line 922
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_0

    .line 925
    new-instance v1, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v1, v0}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onDownloadStarted(ZI)V
    .locals 3
    .param p1, "started"    # Z
    .param p2, "downloadId"    # I

    .prologue
    .line 965
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 966
    const-string v0, "ChildProcLauncher"

    const-string v1, "Illegal callback for non-download process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    :cond_0
    return-void
.end method

.method public registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .locals 3
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I
    .param p3, "surface"    # Landroid/view/Surface;

    .prologue
    .line 931
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 932
    const-string v0, "ChildProcLauncher"

    const-string v1, "Illegal callback for non-GPU process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1800(IILandroid/view/Surface;)V

    goto :goto_0
.end method

.method public unregisterSurfaceTextureSurface(II)V
    .locals 3
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I

    .prologue
    .line 943
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 944
    const-string v0, "ChildProcLauncher"

    const-string v1, "Illegal callback for non-GPU process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    :goto_0
    return-void

    .line 948
    :cond_0
    invoke-static {p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1900(II)V

    goto :goto_0
.end method
