.class Landroid/support/v4/app/bo$c;
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
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 251
    invoke-static {p1}, Landroid/support/v4/app/bp;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public a([Landroid/support/v4/app/bo;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "remoteInputs"    # [Landroid/support/v4/app/bo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "results"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-static {p1, p2, p3}, Landroid/support/v4/app/bp;->a([Landroid/support/v4/app/bq$a;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 257
    return-void
.end method