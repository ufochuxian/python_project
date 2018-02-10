.class Landroid/support/v4/media/session/c$d$b;
.super Landroid/support/v4/media/session/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic k:Landroid/support/v4/media/session/c$d;

.field private l:Landroid/support/v4/media/session/c$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c$d;Landroid/support/v4/media/session/c$a;)V
    .locals 0
    .param p2, "callback"    # Landroid/support/v4/media/session/c$a;

    .prologue
    .line 1910
    iput-object p1, p0, Landroid/support/v4/media/session/c$d$b;->k:Landroid/support/v4/media/session/c$d;

    invoke-direct {p0}, Landroid/support/v4/media/session/a$a;-><init>()V

    .line 1911
    iput-object p2, p0, Landroid/support/v4/media/session/c$d$b;->l:Landroid/support/v4/media/session/c$a;

    .line 1912
    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/session/c$d$b;)Landroid/support/v4/media/session/c$a;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/c$d$b;

    .prologue
    .line 1907
    iget-object v0, p0, Landroid/support/v4/media/session/c$d$b;->l:Landroid/support/v4/media/session/c$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1927
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(I)V
    .locals 2
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1961
    iget-object v0, p0, Landroid/support/v4/media/session/c$d$b;->l:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    new-instance v1, Landroid/support/v4/media/session/c$d$b$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/session/c$d$b$3;-><init>(Landroid/support/v4/media/session/c$d$b;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c$a$a;->post(Ljava/lang/Runnable;)Z

    .line 1967
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1982
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(Landroid/support/v4/media/m;)V
    .locals 1
    .param p1, "metadata"    # Landroid/support/v4/media/m;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1944
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(Landroid/support/v4/media/session/o;)V
    .locals 1
    .param p1, "info"    # Landroid/support/v4/media/session/o;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1988
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(Landroid/support/v4/media/session/p;)V
    .locals 2
    .param p1, "state"    # Landroid/support/v4/media/session/p;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1933
    iget-object v0, p0, Landroid/support/v4/media/session/c$d$b;->l:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    new-instance v1, Landroid/support/v4/media/session/c$d$b$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/session/c$d$b$2;-><init>(Landroid/support/v4/media/session/c$d$b;Landroid/support/v4/media/session/p;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c$a$a;->post(Ljava/lang/Runnable;)Z

    .line 1939
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1956
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
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
    .line 1916
    iget-object v0, p0, Landroid/support/v4/media/session/c$d$b;->l:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    new-instance v1, Landroid/support/v4/media/session/c$d$b$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/session/c$d$b$1;-><init>(Landroid/support/v4/media/session/c$d$b;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c$a$a;->post(Ljava/lang/Runnable;)Z

    .line 1922
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
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
    .line 1950
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/g$f;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1971
    iget-object v0, p0, Landroid/support/v4/media/session/c$d$b;->l:Landroid/support/v4/media/session/c$a;

    iget-object v0, v0, Landroid/support/v4/media/session/c$a;->a:Landroid/support/v4/media/session/c$a$a;

    new-instance v1, Landroid/support/v4/media/session/c$d$b$4;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/session/c$d$b$4;-><init>(Landroid/support/v4/media/session/c$d$b;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c$a$a;->post(Ljava/lang/Runnable;)Z

    .line 1977
    return-void
.end method
