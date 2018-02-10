.class Landroid/support/v4/media/session/m$b;
.super Landroid/support/v4/media/session/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/m$a;",
        ">",
        "Landroid/support/v4/media/session/k$b",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Landroid/support/v4/media/session/m$b;, "Landroid/support/v4/media/session/m$b<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/session/m$a;, "TT;"
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/k$b;-><init>(Landroid/support/v4/media/session/k$a;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 43
    .local p0, "this":Landroid/support/v4/media/session/m$b;, "Landroid/support/v4/media/session/m$b<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/m$b;->a:Landroid/support/v4/media/session/k$a;

    check-cast v0, Landroid/support/v4/media/session/m$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/m$a;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 44
    return-void
.end method
