.class Landroid/support/v4/app/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x18
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/NotificationManager;)Z
    .locals 1
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/app/NotificationManager;)I
    .locals 1
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getImportance()I

    move-result v0

    return v0
.end method
