.class Landroid/support/v4/media/session/c$f;
.super Landroid/support/v4/media/session/c$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/g$i;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionToken"    # Landroid/support/v4/media/session/g$i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2170
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/c$e;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g$i;)V

    .line 2171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/g;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Landroid/support/v4/media/session/g;

    .prologue
    .line 2165
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/c$e;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g;)V

    .line 2166
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/c$i;
    .locals 2

    .prologue
    .line 2175
    iget-object v1, p0, Landroid/support/v4/media/session/c$f;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2176
    .local v0, "controlsObj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v4/media/session/c$l;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/c$l;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
