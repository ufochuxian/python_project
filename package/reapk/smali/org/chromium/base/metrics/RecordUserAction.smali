.class public Lorg/chromium/base/metrics/RecordUserAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field private static sIsDisabledForTests:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/base/metrics/RecordUserAction;->sIsDisabledForTests:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordUserAction;->nativeRecordUserAction(Ljava/lang/String;)V

    return-void
.end method

.method public static disableForTests()V
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/metrics/RecordUserAction;->sIsDisabledForTests:Z

    .line 30
    return-void
.end method

.method private static native nativeRecordUserAction(Ljava/lang/String;)V
.end method

.method public static record(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-boolean v0, Lorg/chromium/base/metrics/RecordUserAction;->sIsDisabledForTests:Z

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordUserAction;->nativeRecordUserAction(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lorg/chromium/base/metrics/RecordUserAction$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/metrics/RecordUserAction$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
