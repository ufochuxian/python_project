.class public Lorg/xwalk/core/internal/XWalkViewDatabaseInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    noInstance = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearFormData()V
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 34
    const-class v0, Lorg/xwalk/core/internal/XWalkViewDatabaseInternal;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkFormDatabase;->clearFormData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v0

    return-void

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized hasFormData()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 23
    const-class v0, Lorg/xwalk/core/internal/XWalkViewDatabaseInternal;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkFormDatabase;->hasFormData()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
