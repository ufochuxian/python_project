.class public final Lcom/jiliguala/niuwa/module/story/helpers/FlavorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_BASE:Z = true

.field public static final IS_CHROME:Z

.field public static final IS_EDU:Z

.field public static final IS_FABLE:Z

.field public static final IS_FINGERPRINT:Z

.field public static final IS_KINDLE:Z

.field public static final IS_ONEBOOK:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "20faad38cb33e8765afb090b842594f2"

    return-object v0
.end method

.method public static getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "f628d26b6e8193301c767c7a27ff6540"

    return-object v0
.end method

.method public static getFlavor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "jiliguala"

    return-object v0
.end method

.method public static isFavoritingEnabled()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static isRatingsRequestsAllowed()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public static isSharingEnabled()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public static isTelemetryEnabled()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
