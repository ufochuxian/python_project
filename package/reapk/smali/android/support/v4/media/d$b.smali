.class Landroid/support/v4/media/d$b;
.super Landroid/support/v4/media/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/d$a;",
        ">",
        "Landroid/support/v4/media/b$e",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Landroid/support/v4/media/d$b;, "Landroid/support/v4/media/d$b<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/d$a;, "TT;"
    invoke-direct {p0, p1}, Landroid/support/v4/media/b$e;-><init>(Landroid/support/v4/media/b$d;)V

    .line 55
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Landroid/support/v4/media/d$b;, "Landroid/support/v4/media/d$b<TT;>;"
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Landroid/support/v4/media/d$b;->a:Landroid/support/v4/media/b$d;

    check-cast v0, Landroid/support/v4/media/d$a;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/media/d$a;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 65
    .local p0, "this":Landroid/support/v4/media/d$b;, "Landroid/support/v4/media/d$b<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/d$b;->a:Landroid/support/v4/media/b$d;

    check-cast v0, Landroid/support/v4/media/d$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/d$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
