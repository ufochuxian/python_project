.class Landroid/support/v4/media/b$b;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/b$a;",
        ">",
        "Landroid/media/browse/MediaBrowser$ConnectionCallback;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/media/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Landroid/support/v4/media/b$b;, "Landroid/support/v4/media/b$b<TT;>;"
    .local p1, "connectionCallback":Landroid/support/v4/media/b$a;, "TT;"
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/support/v4/media/b$b;->a:Landroid/support/v4/media/b$a;

    .line 100
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Landroid/support/v4/media/b$b;, "Landroid/support/v4/media/b$b<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/b$b;->a:Landroid/support/v4/media/b$a;

    invoke-interface {v0}, Landroid/support/v4/media/b$a;->a()V

    .line 105
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Landroid/support/v4/media/b$b;, "Landroid/support/v4/media/b$b<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/b$b;->a:Landroid/support/v4/media/b$a;

    invoke-interface {v0}, Landroid/support/v4/media/b$a;->c()V

    .line 115
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Landroid/support/v4/media/b$b;, "Landroid/support/v4/media/b$b<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/b$b;->a:Landroid/support/v4/media/b$a;

    invoke-interface {v0}, Landroid/support/v4/media/b$a;->b()V

    .line 110
    return-void
.end method
