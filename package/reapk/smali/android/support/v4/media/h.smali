.class Landroid/support/v4/media/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/h$a;,
        Landroid/support/v4/media/h$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/media/h$b;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceProxy"    # Landroid/support/v4/media/h$b;

    .prologue
    .line 31
    new-instance v0, Landroid/support/v4/media/h$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/h$a;-><init>(Landroid/content/Context;Landroid/support/v4/media/h$b;)V

    return-object v0
.end method
