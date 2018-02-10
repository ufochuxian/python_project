.class Landroid/support/v4/media/session/n$b;
.super Landroid/support/v4/media/session/m$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/n$a;",
        ">",
        "Landroid/support/v4/media/session/m$b",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Landroid/support/v4/media/session/n$b;, "Landroid/support/v4/media/session/n$b<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/session/n$a;, "TT;"
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/m$b;-><init>(Landroid/support/v4/media/session/m$a;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Landroid/support/v4/media/session/n$b;, "Landroid/support/v4/media/session/n$b<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/n$b;->a:Landroid/support/v4/media/session/k$a;

    check-cast v0, Landroid/support/v4/media/session/n$a;

    invoke-interface {v0}, Landroid/support/v4/media/session/n$a;->h()V

    .line 65
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 69
    .local p0, "this":Landroid/support/v4/media/session/n$b;, "Landroid/support/v4/media/session/n$b<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/n$b;->a:Landroid/support/v4/media/session/k$a;

    check-cast v0, Landroid/support/v4/media/session/n$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/n$a;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 74
    .local p0, "this":Landroid/support/v4/media/session/n$b;, "Landroid/support/v4/media/session/n$b<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/n$b;->a:Landroid/support/v4/media/session/k$a;

    check-cast v0, Landroid/support/v4/media/session/n$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/n$a;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 79
    .local p0, "this":Landroid/support/v4/media/session/n$b;, "Landroid/support/v4/media/session/n$b<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/n$b;->a:Landroid/support/v4/media/session/k$a;

    check-cast v0, Landroid/support/v4/media/session/n$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/n$a;->b(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 80
    return-void
.end method
