.class Landroid/support/v7/app/r;
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/ax;)V
    .locals 2
    .param p0, "b"    # Landroid/support/v4/app/ax;

    .prologue
    .line 29
    invoke-interface {p0}, Landroid/support/v4/app/ax;->a()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 30
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 31
    return-void
.end method

.method public static b(Landroid/support/v4/app/ax;)V
    .locals 2
    .param p0, "b"    # Landroid/support/v4/app/ax;

    .prologue
    .line 34
    invoke-interface {p0}, Landroid/support/v4/app/ax;->a()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 35
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 36
    return-void
.end method
