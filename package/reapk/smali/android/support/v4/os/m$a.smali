.class Landroid/support/v4/os/m$a;
.super Landroid/support/v4/os/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/os/m;


# direct methods
.method constructor <init>(Landroid/support/v4/os/m;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/os/m;

    .prologue
    .line 64
    iput-object p1, p0, Landroid/support/v4/os/m$a;->b:Landroid/support/v4/os/m;

    invoke-direct {p0}, Landroid/support/v4/os/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v4/os/m$a;->b:Landroid/support/v4/os/m;

    iget-object v0, v0, Landroid/support/v4/os/m;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/support/v4/os/m$a;->b:Landroid/support/v4/os/m;

    iget-object v0, v0, Landroid/support/v4/os/m;->b:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/os/m$b;

    iget-object v2, p0, Landroid/support/v4/os/m$a;->b:Landroid/support/v4/os/m;

    invoke-direct {v1, v2, p1, p2}, Landroid/support/v4/os/m$b;-><init>(Landroid/support/v4/os/m;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Landroid/support/v4/os/m$a;->b:Landroid/support/v4/os/m;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/os/m;->a(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
