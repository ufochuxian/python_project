.class Landroid/support/v4/media/session/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "queueItem"    # Ljava/lang/Object;

    .prologue
    .line 246
    check-cast p0, Landroid/media/session/MediaSession$QueueItem;

    .end local p0    # "queueItem":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "mediaDescription"    # Ljava/lang/Object;
    .param p1, "id"    # J

    .prologue
    .line 242
    new-instance v0, Landroid/media/session/MediaSession$QueueItem;

    check-cast p0, Landroid/media/MediaDescription;

    .end local p0    # "mediaDescription":Ljava/lang/Object;
    invoke-direct {v0, p0, p1, p2}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/media/MediaDescription;J)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)J
    .locals 2
    .param p0, "queueItem"    # Ljava/lang/Object;

    .prologue
    .line 250
    check-cast p0, Landroid/media/session/MediaSession$QueueItem;

    .end local p0    # "queueItem":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v0

    return-wide v0
.end method