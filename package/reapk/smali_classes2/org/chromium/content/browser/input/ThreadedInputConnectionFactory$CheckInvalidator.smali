.class Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckInvalidator"
.end annotation


# instance fields
.field private mInvalid:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;->mInvalid:Z

    .line 49
    return-void
.end method

.method public isInvalid()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 53
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;->mInvalid:Z

    return v0
.end method
