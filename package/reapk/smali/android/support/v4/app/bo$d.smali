.class Landroid/support/v4/app/bo$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/bo$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 226
    const-string v0, "RemoteInput"

    const-string v1, "RemoteInput is only supported from API Level 16"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public a([Landroid/support/v4/app/bo;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "remoteInputs"    # [Landroid/support/v4/app/bo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "results"    # Landroid/os/Bundle;

    .prologue
    .line 232
    const-string v0, "RemoteInput"

    const-string v1, "RemoteInput is only supported from API Level 16"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method
