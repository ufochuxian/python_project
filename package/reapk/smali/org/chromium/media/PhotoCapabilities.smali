.class Lorg/chromium/media/PhotoCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# instance fields
.field public final currentZoom:I

.field public final maxZoom:I

.field public final minZoom:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "maxZoom"    # I
    .param p2, "minZoom"    # I
    .param p3, "currentZoom"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lorg/chromium/media/PhotoCapabilities;->maxZoom:I

    .line 21
    iput p2, p0, Lorg/chromium/media/PhotoCapabilities;->minZoom:I

    .line 22
    iput p3, p0, Lorg/chromium/media/PhotoCapabilities;->currentZoom:I

    .line 23
    return-void
.end method


# virtual methods
.method public getCurrentZoom()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 35
    iget v0, p0, Lorg/chromium/media/PhotoCapabilities;->currentZoom:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 31
    iget v0, p0, Lorg/chromium/media/PhotoCapabilities;->maxZoom:I

    return v0
.end method

.method public getMinZoom()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 27
    iget v0, p0, Lorg/chromium/media/PhotoCapabilities;->minZoom:I

    return v0
.end method
