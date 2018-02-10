.class public Lio/fabric/sdk/android/services/settings/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:I = 0x1


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 10
    .param p1, "analyticsURL"    # Ljava/lang/String;
    .param p2, "flushIntervalSeconds"    # I
    .param p3, "maxByteSizePerFile"    # I
    .param p4, "maxFileCountPerSend"    # I
    .param p5, "maxPendingSendFileCount"    # I
    .param p6, "trackCustomEvents"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lio/fabric/sdk/android/services/settings/b;-><init>(Ljava/lang/String;IIIIZZIZ)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZI)V
    .locals 10
    .param p1, "analyticsURL"    # Ljava/lang/String;
    .param p2, "flushIntervalSeconds"    # I
    .param p3, "maxByteSizePerFile"    # I
    .param p4, "maxFileCountPerSend"    # I
    .param p5, "maxPendingSendFileCount"    # I
    .param p6, "trackCustomEvents"    # Z
    .param p7, "samplingRate"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lio/fabric/sdk/android/services/settings/b;-><init>(Ljava/lang/String;IIIIZZIZ)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZZIZ)V
    .locals 0
    .param p1, "analyticsURL"    # Ljava/lang/String;
    .param p2, "flushIntervalSeconds"    # I
    .param p3, "maxByteSizePerFile"    # I
    .param p4, "maxFileCountPerSend"    # I
    .param p5, "maxPendingSendFileCount"    # I
    .param p6, "trackCustomEvents"    # Z
    .param p7, "trackPredefinedEvents"    # Z
    .param p8, "samplingRate"    # I
    .param p9, "flushOnBackground"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/b;->a:Ljava/lang/String;

    .line 42
    iput p2, p0, Lio/fabric/sdk/android/services/settings/b;->b:I

    .line 43
    iput p3, p0, Lio/fabric/sdk/android/services/settings/b;->c:I

    .line 44
    iput p4, p0, Lio/fabric/sdk/android/services/settings/b;->d:I

    .line 45
    iput p5, p0, Lio/fabric/sdk/android/services/settings/b;->e:I

    .line 46
    iput-boolean p6, p0, Lio/fabric/sdk/android/services/settings/b;->f:Z

    .line 47
    iput-boolean p7, p0, Lio/fabric/sdk/android/services/settings/b;->g:Z

    .line 48
    iput p8, p0, Lio/fabric/sdk/android/services/settings/b;->i:I

    .line 49
    iput-boolean p9, p0, Lio/fabric/sdk/android/services/settings/b;->h:Z

    .line 50
    return-void
.end method
