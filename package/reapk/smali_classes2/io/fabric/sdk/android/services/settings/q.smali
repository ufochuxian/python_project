.class public Lio/fabric/sdk/android/services/settings/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:I


# direct methods
.method public constructor <init>(IIIIIZI)V
    .locals 0
    .param p1, "logBufferSize"    # I
    .param p2, "maxChainedExceptionDepth"    # I
    .param p3, "maxCustomExceptionEvents"    # I
    .param p4, "maxCustomKeyValuePairs"    # I
    .param p5, "identifierMask"    # I
    .param p6, "sendSessionWithoutCrash"    # Z
    .param p7, "maxCompleteSessionsCount"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lio/fabric/sdk/android/services/settings/q;->a:I

    .line 38
    iput p2, p0, Lio/fabric/sdk/android/services/settings/q;->b:I

    .line 39
    iput p3, p0, Lio/fabric/sdk/android/services/settings/q;->c:I

    .line 40
    iput p4, p0, Lio/fabric/sdk/android/services/settings/q;->d:I

    .line 41
    iput p5, p0, Lio/fabric/sdk/android/services/settings/q;->e:I

    .line 42
    iput-boolean p6, p0, Lio/fabric/sdk/android/services/settings/q;->f:Z

    .line 43
    iput p7, p0, Lio/fabric/sdk/android/services/settings/q;->g:I

    .line 44
    return-void
.end method
