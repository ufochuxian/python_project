.class Landroid/support/v4/media/session/c$a$c;
.super Landroid/support/v4/media/session/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic k:Landroid/support/v4/media/session/c$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c$a;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    invoke-direct {p0}, Landroid/support/v4/media/session/a$a;-><init>()V

    .line 714
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 723
    iget-object v0, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/c$a$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 724
    return-void
.end method

.method public a(I)V
    .locals 4
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 748
    iget-object v0, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/media/session/c$a$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 749
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c$a$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 759
    return-void
.end method

.method public a(Landroid/support/v4/media/m;)V
    .locals 3
    .param p1, "metadata"    # Landroid/support/v4/media/m;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c$a$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 734
    return-void
.end method

.method public a(Landroid/support/v4/media/session/o;)V
    .locals 6
    .param p1, "info"    # Landroid/support/v4/media/session/o;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "pi":Landroid/support/v4/media/session/c$h;
    if-eqz p1, :cond_0

    .line 765
    new-instance v0, Landroid/support/v4/media/session/c$h;

    .end local v0    # "pi":Landroid/support/v4/media/session/c$h;
    iget v1, p1, Landroid/support/v4/media/session/o;->a:I

    iget v2, p1, Landroid/support/v4/media/session/o;->b:I

    iget v3, p1, Landroid/support/v4/media/session/o;->c:I

    iget v4, p1, Landroid/support/v4/media/session/o;->d:I

    iget v5, p1, Landroid/support/v4/media/session/o;->e:I

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/c$h;-><init>(IIIII)V

    .line 768
    .restart local v0    # "pi":Landroid/support/v4/media/session/c$h;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    iget-object v1, v1, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/media/session/c$a$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 769
    return-void
.end method

.method public a(Landroid/support/v4/media/session/p;)V
    .locals 3
    .param p1, "state"    # Landroid/support/v4/media/session/p;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c$a$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 729
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 743
    iget-object v0, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c$a$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 744
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/c$a$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 719
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/g$f;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 738
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/g$f;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c$a$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 739
    return-void
.end method

.method public a(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Landroid/support/v4/media/session/c$a$c;->k:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    const/16 v1, 0xa

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/media/session/c$a$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 754
    return-void
.end method
