.class Landroid/support/v4/app/bj$f;
.super Landroid/support/v4/app/bj$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/support/v4/app/bj$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/app/NotificationManager;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 210
    invoke-static {p1}, Landroid/support/v4/app/bm;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
