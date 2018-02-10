.class Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mKeepScreenOnView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyBlock(Lorg/chromium/ui/base/ViewAndroidDelegate;)V
    .locals 6
    .param p1, "delegate"    # Lorg/chromium/ui/base/ViewAndroidDelegate;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 29
    sget-boolean v0, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;->mKeepScreenOnView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_0
    invoke-interface {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->acquireAnchorView()Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "anchorView":Landroid/view/View;
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;->mKeepScreenOnView:Ljava/lang/ref/WeakReference;

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 32
    invoke-interface/range {v0 .. v5}, Lorg/chromium/ui/base/ViewAndroidDelegate;->setAnchorViewPosition(Landroid/view/View;FFFF)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 34
    return-void
.end method

.method private static create()Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;

    invoke-direct {v0}, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;-><init>()V

    return-object v0
.end method

.method private removeBlock(Lorg/chromium/ui/base/ViewAndroidDelegate;)V
    .locals 2
    .param p1, "delegate"    # Lorg/chromium/ui/base/ViewAndroidDelegate;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 38
    sget-boolean v1, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;->mKeepScreenOnView:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 39
    :cond_0
    iget-object v1, p0, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;->mKeepScreenOnView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 40
    .local v0, "anchorView":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/device/power_save_blocker/PowerSaveBlocker;->mKeepScreenOnView:Ljava/lang/ref/WeakReference;

    .line 41
    if-nez v0, :cond_1

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 44
    invoke-interface {p1, v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->releaseAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method
