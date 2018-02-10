.class public Lio/fabric/sdk/android/services/settings/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/fabric/sdk/android/services/settings/e;

.field public final b:Lio/fabric/sdk/android/services/settings/q;

.field public final c:Lio/fabric/sdk/android/services/settings/p;

.field public final d:Lio/fabric/sdk/android/services/settings/n;

.field public final e:Lio/fabric/sdk/android/services/settings/b;

.field public final f:Lio/fabric/sdk/android/services/settings/g;

.field public final g:J

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(JLio/fabric/sdk/android/services/settings/e;Lio/fabric/sdk/android/services/settings/q;Lio/fabric/sdk/android/services/settings/p;Lio/fabric/sdk/android/services/settings/n;Lio/fabric/sdk/android/services/settings/b;Lio/fabric/sdk/android/services/settings/g;II)V
    .locals 1
    .param p1, "expiresAtMillis"    # J
    .param p3, "appData"    # Lio/fabric/sdk/android/services/settings/e;
    .param p4, "sessionData"    # Lio/fabric/sdk/android/services/settings/q;
    .param p5, "promptData"    # Lio/fabric/sdk/android/services/settings/p;
    .param p6, "featuresData"    # Lio/fabric/sdk/android/services/settings/n;
    .param p7, "analyticsSettingsData"    # Lio/fabric/sdk/android/services/settings/b;
    .param p8, "betaSettingsData"    # Lio/fabric/sdk/android/services/settings/g;
    .param p9, "settingsVersion"    # I
    .param p10, "cacheDuration"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lio/fabric/sdk/android/services/settings/t;->g:J

    .line 41
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/t;->a:Lio/fabric/sdk/android/services/settings/e;

    .line 42
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/t;->b:Lio/fabric/sdk/android/services/settings/q;

    .line 43
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/t;->c:Lio/fabric/sdk/android/services/settings/p;

    .line 44
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/t;->d:Lio/fabric/sdk/android/services/settings/n;

    .line 45
    iput p9, p0, Lio/fabric/sdk/android/services/settings/t;->h:I

    .line 46
    iput p10, p0, Lio/fabric/sdk/android/services/settings/t;->i:I

    .line 47
    iput-object p7, p0, Lio/fabric/sdk/android/services/settings/t;->e:Lio/fabric/sdk/android/services/settings/b;

    .line 48
    iput-object p8, p0, Lio/fabric/sdk/android/services/settings/t;->f:Lio/fabric/sdk/android/services/settings/g;

    .line 49
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 3
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 52
    iget-wide v0, p0, Lio/fabric/sdk/android/services/settings/t;->g:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
