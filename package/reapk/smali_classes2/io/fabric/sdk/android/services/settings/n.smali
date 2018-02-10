.class public Lio/fabric/sdk/android/services/settings/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "promptEnabled"    # Z
    .param p2, "collectLoggedException"    # Z
    .param p3, "collectReports"    # Z
    .param p4, "collectAnalytics"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lio/fabric/sdk/android/services/settings/n;->a:Z

    .line 32
    iput-boolean p2, p0, Lio/fabric/sdk/android/services/settings/n;->b:Z

    .line 33
    iput-boolean p3, p0, Lio/fabric/sdk/android/services/settings/n;->c:Z

    .line 34
    iput-boolean p4, p0, Lio/fabric/sdk/android/services/settings/n;->d:Z

    .line 35
    return-void
.end method
