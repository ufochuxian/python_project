.class Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;
.super Lio/fabric/sdk/android/services/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/b/d",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION:Ljava/lang/String; = ".tap"

.field private static final SESSION_ANALYTICS_TO_SEND_FILE_PREFIX:Ljava/lang/String; = "sa"


# instance fields
.field private analyticsSettingsData:Lio/fabric/sdk/android/services/settings/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/answers/SessionEventTransform;Lio/fabric/sdk/android/services/common/k;Lio/fabric/sdk/android/services/b/g;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transform"    # Lcom/crashlytics/android/answers/SessionEventTransform;
    .param p3, "currentTimeProvider"    # Lio/fabric/sdk/android/services/common/k;
    .param p4, "eventStorage"    # Lio/fabric/sdk/android/services/b/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/b/d;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/b/c;Lio/fabric/sdk/android/services/common/k;Lio/fabric/sdk/android/services/b/g;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected generateUniqueRollOverFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 37
    .local v0, "targetUUIDComponent":Ljava/util/UUID;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sa"

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->currentTimeProvider:Lio/fabric/sdk/android/services/common/k;

    .line 42
    invoke-interface {v2}, Lio/fabric/sdk/android/services/common/k;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tap"

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    return-object v1
.end method

.method protected getMaxByteSizePerFile()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/b;

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0}, Lio/fabric/sdk/android/services/b/d;->getMaxByteSizePerFile()I

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/b;

    iget v0, v0, Lio/fabric/sdk/android/services/settings/b;->c:I

    goto :goto_0
.end method

.method protected getMaxFilesToKeep()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/b;

    if-nez v0, :cond_0

    .line 50
    invoke-super {p0}, Lio/fabric/sdk/android/services/b/d;->getMaxFilesToKeep()I

    move-result v0

    .line 49
    :goto_0
    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/b;

    iget v0, v0, Lio/fabric/sdk/android/services/settings/b;->e:I

    goto :goto_0
.end method

.method setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/b;)V
    .locals 0
    .param p1, "analyticsSettingsData"    # Lio/fabric/sdk/android/services/settings/b;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/b;

    .line 63
    return-void
.end method
