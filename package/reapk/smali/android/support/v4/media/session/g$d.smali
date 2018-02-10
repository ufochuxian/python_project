.class Landroid/support/v4/media/session/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/g$d$c;,
        Landroid/support/v4/media/session/g$d$a;,
        Landroid/support/v4/media/session/g$d$b;
    }
.end annotation


# instance fields
.field private A:Landroid/support/v4/media/session/g$d$c;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Landroid/support/v4/media/x$a;

.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Landroid/media/AudioManager;

.field final d:Ljava/lang/Object;

.field final e:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/support/v4/media/session/a;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field volatile g:Landroid/support/v4/media/session/g$a;

.field h:I

.field i:Landroid/support/v4/media/m;

.field j:Landroid/support/v4/media/session/p;

.field k:Landroid/app/PendingIntent;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/g$f;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Landroid/os/Bundle;

.field r:I

.field s:I

.field t:Landroid/support/v4/media/x;

.field private final u:Landroid/content/Context;

.field private final v:Landroid/content/ComponentName;

.field private final w:Landroid/app/PendingIntent;

.field private final x:Ljava/lang/Object;

.field private final y:Landroid/support/v4/media/session/g$d$b;

.field private final z:Landroid/support/v4/media/session/g$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbrIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1463
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/g$d;->d:Ljava/lang/Object;

    .line 1464
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    .line 1468
    iput-boolean v2, p0, Landroid/support/v4/media/session/g$d;->f:Z

    .line 1469
    iput-boolean v2, p0, Landroid/support/v4/media/session/g$d;->B:Z

    .line 1470
    iput-boolean v2, p0, Landroid/support/v4/media/session/g$d;->C:Z

    .line 1471
    iput-boolean v2, p0, Landroid/support/v4/media/session/g$d;->D:Z

    .line 1490
    new-instance v0, Landroid/support/v4/media/session/g$d$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/g$d$1;-><init>(Landroid/support/v4/media/session/g$d;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g$d;->E:Landroid/support/v4/media/x$a;

    .line 1506
    if-nez p3, :cond_0

    .line 1507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaButtonReceiver component may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1510
    :cond_0
    iput-object p1, p0, Landroid/support/v4/media/session/g$d;->u:Landroid/content/Context;

    .line 1511
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/g$d;->a:Ljava/lang/String;

    .line 1512
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v4/media/session/g$d;->c:Landroid/media/AudioManager;

    .line 1513
    iput-object p2, p0, Landroid/support/v4/media/session/g$d;->b:Ljava/lang/String;

    .line 1514
    iput-object p3, p0, Landroid/support/v4/media/session/g$d;->v:Landroid/content/ComponentName;

    .line 1515
    iput-object p4, p0, Landroid/support/v4/media/session/g$d;->w:Landroid/app/PendingIntent;

    .line 1516
    new-instance v0, Landroid/support/v4/media/session/g$d$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/g$d$b;-><init>(Landroid/support/v4/media/session/g$d;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g$d;->y:Landroid/support/v4/media/session/g$d$b;

    .line 1517
    new-instance v0, Landroid/support/v4/media/session/g$i;

    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->y:Landroid/support/v4/media/session/g$d$b;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/g$i;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g$d;->z:Landroid/support/v4/media/session/g$i;

    .line 1519
    iput v2, p0, Landroid/support/v4/media/session/g$d;->n:I

    .line 1520
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/session/g$d;->r:I

    .line 1521
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/media/session/g$d;->s:I

    .line 1522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 1523
    invoke-static {p4}, Landroid/support/v4/media/session/h;->a(Landroid/app/PendingIntent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    .line 1527
    :goto_0
    return-void

    .line 1525
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2042
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2043
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2044
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 2046
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2050
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2051
    return-void

    .line 2047
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private b(Landroid/support/v4/media/m;)V
    .locals 4
    .param p1, "metadata"    # Landroid/support/v4/media/m;

    .prologue
    .line 1982
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1983
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1984
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 1986
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/m;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1990
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1991
    return-void

    .line 1987
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private b(Landroid/support/v4/media/session/p;)V
    .locals 4
    .param p1, "state"    # Landroid/support/v4/media/session/p;

    .prologue
    .line 1970
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1971
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1972
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 1974
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/session/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1971
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1978
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1979
    return-void

    .line 1975
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "queueTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 2006
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2007
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2008
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 2010
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2007
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2014
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2015
    return-void

    .line 2011
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1958
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1959
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1960
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 1962
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1966
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1967
    return-void

    .line 1963
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/g$f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1994
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/g$f;>;"
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1995
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1996
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 1998
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1995
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2002
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2003
    return-void

    .line 1999
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private c(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2030
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2031
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2032
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 2034
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2038
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2039
    return-void

    .line 2035
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private f(I)V
    .locals 4
    .param p1, "repeatMode"    # I

    .prologue
    .line 2018
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2019
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2020
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 2022
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2026
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2027
    return-void

    .line 2023
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private h()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v3, 0x12

    const/4 v5, 0x0

    .line 1806
    const/4 v1, 0x0

    .line 1807
    .local v1, "registeredRcc":Z
    iget-boolean v2, p0, Landroid/support/v4/media/session/g$d;->B:Z

    if-eqz v2, :cond_6

    .line 1810
    iget-boolean v2, p0, Landroid/support/v4/media/session/g$d;->D:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/support/v4/media/session/g$d;->h:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1811
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 1812
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->u:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->w:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/media/session/g$d;->v:Landroid/content/ComponentName;

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/i;->a(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1820
    :goto_0
    iput-boolean v6, p0, Landroid/support/v4/media/session/g$d;->D:Z

    .line 1835
    :cond_0
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 1836
    iget-boolean v2, p0, Landroid/support/v4/media/session/g$d;->C:Z

    if-nez v2, :cond_5

    iget v2, p0, Landroid/support/v4/media/session/g$d;->h:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 1837
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->u:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/h;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1838
    iput-boolean v6, p0, Landroid/support/v4/media/session/g$d;->C:Z

    .line 1839
    const/4 v1, 0x1

    .line 1872
    :cond_1
    :goto_2
    return v1

    .line 1816
    :cond_2
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->u:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1818
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->v:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 1821
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_3
    iget-boolean v2, p0, Landroid/support/v4/media/session/g$d;->D:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/media/session/g$d;->h:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 1822
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_4

    .line 1823
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->u:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->w:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/media/session/g$d;->v:Landroid/content/ComponentName;

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/i;->b(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1831
    :goto_3
    iput-boolean v5, p0, Landroid/support/v4/media/session/g$d;->D:Z

    goto :goto_1

    .line 1827
    :cond_4
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->u:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1829
    .restart local v0    # "am":Landroid/media/AudioManager;
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->v:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_3

    .line 1840
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_5
    iget-boolean v2, p0, Landroid/support/v4/media/session/g$d;->C:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v4/media/session/g$d;->h:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 1845
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-static {v2, v5}, Landroid/support/v4/media/session/h;->a(Ljava/lang/Object;I)V

    .line 1846
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->u:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/h;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1847
    iput-boolean v5, p0, Landroid/support/v4/media/session/g$d;->C:Z

    goto :goto_2

    .line 1852
    :cond_6
    iget-boolean v2, p0, Landroid/support/v4/media/session/g$d;->D:Z

    if-eqz v2, :cond_7

    .line 1853
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_8

    .line 1854
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->u:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->w:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/media/session/g$d;->v:Landroid/content/ComponentName;

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/i;->b(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1861
    :goto_4
    iput-boolean v5, p0, Landroid/support/v4/media/session/g$d;->D:Z

    .line 1863
    :cond_7
    iget-boolean v2, p0, Landroid/support/v4/media/session/g$d;->C:Z

    if-eqz v2, :cond_1

    .line 1867
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-static {v2, v5}, Landroid/support/v4/media/session/h;->a(Ljava/lang/Object;I)V

    .line 1868
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->u:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/h;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1869
    iput-boolean v5, p0, Landroid/support/v4/media/session/g$d;->C:Z

    goto :goto_2

    .line 1857
    :cond_8
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->u:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1859
    .restart local v0    # "am":Landroid/media/AudioManager;
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->v:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_4
.end method

.method private i()V
    .locals 4

    .prologue
    .line 1945
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1946
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1947
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 1949
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0}, Landroid/support/v4/media/session/a;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1946
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1953
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1954
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1955
    return-void

    .line 1950
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1605
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1606
    :try_start_0
    iput p1, p0, Landroid/support/v4/media/session/g$d;->h:I

    .line 1607
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    invoke-direct {p0}, Landroid/support/v4/media/session/g$d;->h()Z

    .line 1609
    return-void

    .line 1607
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(II)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1580
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/media/session/g$d;->a(ILjava/lang/Object;I)V

    .line 1581
    return-void
.end method

.method a(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1584
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/media/session/g$d;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1585
    return-void
.end method

.method a(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    .line 1588
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1589
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->A:Landroid/support/v4/media/session/g$d$c;

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->A:Landroid/support/v4/media/session/g$d$c;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/session/g$d$c;->a(ILjava/lang/Object;I)V

    .line 1592
    :cond_0
    monitor-exit v1

    .line 1593
    return-void

    .line 1592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1596
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1597
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->A:Landroid/support/v4/media/session/g$d$c;

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->A:Landroid/support/v4/media/session/g$d$c;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/session/g$d$c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1600
    :cond_0
    monitor-exit v1

    .line 1601
    return-void

    .line 1600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1740
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1741
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/g$d;->k:Landroid/app/PendingIntent;

    .line 1742
    monitor-exit v1

    .line 1743
    return-void

    .line 1742
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1800
    iput-object p1, p0, Landroid/support/v4/media/session/g$d;->q:Landroid/os/Bundle;

    .line 1801
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/g$d;->b(Landroid/os/Bundle;)V

    .line 1802
    return-void
.end method

.method public a(Landroid/support/v4/media/m;)V
    .locals 4
    .param p1, "metadata"    # Landroid/support/v4/media/m;

    .prologue
    const/4 v0, 0x0

    .line 1714
    if-eqz p1, :cond_0

    .line 1717
    new-instance v1, Landroid/support/v4/media/m$b;

    sget v2, Landroid/support/v4/media/session/g;->s:I

    invoke-direct {v1, p1, v2}, Landroid/support/v4/media/m$b;-><init>(Landroid/support/v4/media/m;I)V

    invoke-virtual {v1}, Landroid/support/v4/media/m$b;->a()Landroid/support/v4/media/m;

    move-result-object p1

    .line 1720
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1721
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/g$d;->i:Landroid/support/v4/media/m;

    .line 1722
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/g$d;->b(Landroid/support/v4/media/m;)V

    .line 1724
    iget-boolean v1, p0, Landroid/support/v4/media/session/g$d;->B:Z

    if-nez v1, :cond_2

    .line 1736
    :cond_1
    :goto_0
    return-void

    .line 1722
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1728
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_5

    .line 1729
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 1730
    :goto_1
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->j:Landroid/support/v4/media/session/p;

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    .line 1729
    :goto_2
    invoke-static {v1, v0, v2, v3}, Landroid/support/v4/media/session/j;->a(Ljava/lang/Object;Landroid/os/Bundle;J)V

    goto :goto_0

    .line 1730
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/m;->d()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/support/v4/media/session/g$d;->j:Landroid/support/v4/media/session/p;

    .line 1731
    invoke-virtual {v2}, Landroid/support/v4/media/session/p;->e()J

    move-result-wide v2

    goto :goto_2

    .line 1732
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 1733
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    if-nez p1, :cond_6

    :goto_3
    invoke-static {v1, v0}, Landroid/support/v4/media/session/h;->a(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1734
    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/media/m;->d()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3
.end method

.method public a(Landroid/support/v4/media/session/g$a;Landroid/os/Handler;)V
    .locals 8
    .param p1, "callback"    # Landroid/support/v4/media/session/g$a;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x13

    const/16 v6, 0x12

    .line 1531
    iput-object p1, p0, Landroid/support/v4/media/session/g$d;->g:Landroid/support/v4/media/session/g$a;

    .line 1532
    if-nez p1, :cond_2

    .line 1535
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_0

    .line 1536
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/support/v4/media/session/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1538
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_1

    .line 1539
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/support/v4/media/session/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1573
    :cond_1
    :goto_0
    return-void

    .line 1542
    :cond_2
    if-nez p2, :cond_3

    .line 1543
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 1545
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_3
    iget-object v4, p0, Landroid/support/v4/media/session/g$d;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 1546
    :try_start_0
    new-instance v3, Landroid/support/v4/media/session/g$d$c;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Landroid/support/v4/media/session/g$d$c;-><init>(Landroid/support/v4/media/session/g$d;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/support/v4/media/session/g$d;->A:Landroid/support/v4/media/session/g$d$c;

    .line 1547
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    new-instance v0, Landroid/support/v4/media/session/g$d$2;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/g$d$2;-><init>(Landroid/support/v4/media/session/g$d;)V

    .line 1560
    .local v0, "cb19":Landroid/support/v4/media/session/j$a;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_4

    .line 1562
    invoke-static {v0}, Landroid/support/v4/media/session/i;->a(Landroid/support/v4/media/session/i$a;)Ljava/lang/Object;

    move-result-object v2

    .line 1563
    .local v2, "onPositionUpdateObj":Ljava/lang/Object;
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/support/v4/media/session/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1566
    .end local v2    # "onPositionUpdateObj":Ljava/lang/Object;
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_1

    .line 1568
    invoke-static {v0}, Landroid/support/v4/media/session/j;->a(Landroid/support/v4/media/session/j$a;)Ljava/lang/Object;

    move-result-object v1

    .line 1569
    .local v1, "onMetadataUpdateObj":Ljava/lang/Object;
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-static {v3, v1}, Landroid/support/v4/media/session/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1547
    .end local v0    # "cb19":Landroid/support/v4/media/session/j$a;
    .end local v1    # "onMetadataUpdateObj":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method a(Landroid/support/v4/media/session/o;)V
    .locals 4
    .param p1, "info"    # Landroid/support/v4/media/session/o;

    .prologue
    .line 1933
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1934
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1935
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 1937
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/session/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1941
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1942
    return-void

    .line 1938
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public a(Landroid/support/v4/media/session/p;)V
    .locals 9
    .param p1, "state"    # Landroid/support/v4/media/session/p;

    .prologue
    const/16 v8, 0x12

    const/16 v7, 0xe

    .line 1679
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1680
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/g$d;->j:Landroid/support/v4/media/session/p;

    .line 1681
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/g$d;->b(Landroid/support/v4/media/session/p;)V

    .line 1683
    iget-boolean v0, p0, Landroid/support/v4/media/session/g$d;->B:Z

    if-nez v0, :cond_1

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1681
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1687
    :cond_1
    if-nez p1, :cond_2

    .line 1688
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    .line 1689
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/session/h;->a(Ljava/lang/Object;I)V

    .line 1690
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/h;->a(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1694
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_4

    .line 1695
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/p;->a()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/media/session/p;->b()J

    move-result-wide v2

    .line 1696
    invoke-virtual {p1}, Landroid/support/v4/media/session/p;->d()F

    move-result v4

    invoke-virtual {p1}, Landroid/support/v4/media/session/p;->i()J

    move-result-wide v5

    .line 1695
    invoke-static/range {v0 .. v6}, Landroid/support/v4/media/session/i;->a(Ljava/lang/Object;IJFJ)V

    .line 1702
    :cond_3
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5

    .line 1703
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/p;->e()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/j;->a(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1697
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_3

    .line 1698
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/p;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/h;->a(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1704
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_6

    .line 1705
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/p;->e()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/i;->a(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1706
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    .line 1707
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/p;->e()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/h;->a(Ljava/lang/Object;J)V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/x;)V
    .locals 6
    .param p1, "volumeProvider"    # Landroid/support/v4/media/x;

    .prologue
    .line 1626
    if-nez p1, :cond_0

    .line 1627
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "volumeProvider may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1629
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    if-eqz v1, :cond_1

    .line 1630
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/media/x;->a(Landroid/support/v4/media/x$a;)V

    .line 1632
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v4/media/session/g$d;->r:I

    .line 1633
    iput-object p1, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    .line 1634
    new-instance v0, Landroid/support/v4/media/session/o;

    iget v1, p0, Landroid/support/v4/media/session/g$d;->r:I

    iget v2, p0, Landroid/support/v4/media/session/g$d;->s:I

    iget-object v3, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    .line 1635
    invoke-virtual {v3}, Landroid/support/v4/media/x;->b()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    invoke-virtual {v4}, Landroid/support/v4/media/x;->c()I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    .line 1636
    invoke-virtual {v5}, Landroid/support/v4/media/x;->a()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/o;-><init>(IIIII)V

    .line 1637
    .local v0, "info":Landroid/support/v4/media/session/o;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/g$d;->a(Landroid/support/v4/media/session/o;)V

    .line 1639
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->E:Landroid/support/v4/media/x$a;

    invoke-virtual {p1, v1}, Landroid/support/v4/media/x;->a(Landroid/support/v4/media/x$a;)V

    .line 1640
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1758
    iput-object p1, p0, Landroid/support/v4/media/session/g$d;->m:Ljava/lang/CharSequence;

    .line 1759
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/g$d;->b(Ljava/lang/CharSequence;)V

    .line 1760
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1661
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/g$d;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1662
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/g$f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1752
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/g$f;>;"
    iput-object p1, p0, Landroid/support/v4/media/session/g$d;->l:Ljava/util/List;

    .line 1753
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/g$d;->b(Ljava/util/List;)V

    .line 1754
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 1644
    iget-boolean v0, p0, Landroid/support/v4/media/session/g$d;->B:Z

    if-ne p1, v0, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1647
    :cond_1
    iput-boolean p1, p0, Landroid/support/v4/media/session/g$d;->B:Z

    .line 1648
    invoke-direct {p0}, Landroid/support/v4/media/session/g$d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->i:Landroid/support/v4/media/m;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/g$d;->a(Landroid/support/v4/media/m;)V

    .line 1650
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->j:Landroid/support/v4/media/session/p;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/g$d;->a(Landroid/support/v4/media/session/p;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1656
    iget-boolean v0, p0, Landroid/support/v4/media/session/g$d;->B:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1666
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/g$d;->B:Z

    .line 1667
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/session/g$d;->f:Z

    .line 1668
    invoke-direct {p0}, Landroid/support/v4/media/session/g$d;->h()Z

    .line 1669
    invoke-direct {p0}, Landroid/support/v4/media/session/g$d;->i()V

    .line 1670
    return-void
.end method

.method public b(I)V
    .locals 7
    .param p1, "stream"    # I

    .prologue
    .line 1613
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    if-eqz v1, :cond_0

    .line 1614
    iget-object v1, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/media/x;->a(Landroid/support/v4/media/x$a;)V

    .line 1616
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v4/media/session/g$d;->r:I

    .line 1617
    new-instance v0, Landroid/support/v4/media/session/o;

    iget v1, p0, Landroid/support/v4/media/session/g$d;->r:I

    iget v2, p0, Landroid/support/v4/media/session/g$d;->s:I

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/media/session/g$d;->c:Landroid/media/AudioManager;

    iget v5, p0, Landroid/support/v4/media/session/g$d;->s:I

    .line 1619
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/media/session/g$d;->c:Landroid/media/AudioManager;

    iget v6, p0, Landroid/support/v4/media/session/g$d;->s:I

    .line 1620
    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/o;-><init>(IIIII)V

    .line 1621
    .local v0, "info":Landroid/support/v4/media/session/o;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/g$d;->a(Landroid/support/v4/media/session/o;)V

    .line 1622
    return-void
.end method

.method b(II)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1876
    iget v0, p0, Landroid/support/v4/media/session/g$d;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1877
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/x;->c(I)V

    .line 1883
    :cond_0
    :goto_0
    return-void

    .line 1881
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->c:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/g$d;->s:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .prologue
    .line 1748
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1792
    iget-boolean v0, p0, Landroid/support/v4/media/session/g$d;->p:Z

    if-eq v0, p1, :cond_0

    .line 1793
    iput-boolean p1, p0, Landroid/support/v4/media/session/g$d;->p:Z

    .line 1794
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/g$d;->c(Z)V

    .line 1796
    :cond_0
    return-void
.end method

.method public c()Landroid/support/v4/media/session/g$i;
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->z:Landroid/support/v4/media/session/g$i;

    return-object v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1779
    iput p1, p0, Landroid/support/v4/media/session/g$d;->n:I

    .line 1780
    return-void
.end method

.method c(II)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1886
    iget v0, p0, Landroid/support/v4/media/session/g$d;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1887
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->t:Landroid/support/v4/media/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/x;->b(I)V

    .line 1893
    :cond_0
    :goto_0
    return-void

    .line 1891
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->c:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/g$d;->s:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1764
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .prologue
    .line 1784
    iget v0, p0, Landroid/support/v4/media/session/g$d;->o:I

    if-eq v0, p1, :cond_0

    .line 1785
    iput p1, p0, Landroid/support/v4/media/session/g$d;->o:I

    .line 1786
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/g$d;->f(I)V

    .line 1788
    :cond_0
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Landroid/support/v4/media/session/g$d;->x:Ljava/lang/Object;

    return-object v0
.end method

.method e(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/g$d;->a(ILjava/lang/Object;)V

    .line 1577
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1774
    const/4 v0, 0x0

    return-object v0
.end method

.method g()Landroid/support/v4/media/session/p;
    .locals 20

    .prologue
    .line 1897
    const-wide/16 v10, -0x1

    .line 1898
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/media/session/g$d;->d:Ljava/lang/Object;

    monitor-enter v6

    .line 1899
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/media/session/g$d;->j:Landroid/support/v4/media/session/p;

    .line 1900
    .local v12, "state":Landroid/support/v4/media/session/p;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/g$d;->i:Landroid/support/v4/media/m;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/g$d;->i:Landroid/support/v4/media/m;

    const-string v13, "android.media.metadata.DURATION"

    .line 1901
    invoke-virtual {v3, v13}, Landroid/support/v4/media/m;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1902
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/g$d;->i:Landroid/support/v4/media/m;

    const-string v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/support/v4/media/m;->d(Ljava/lang/String;)J

    move-result-wide v10

    .line 1904
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1906
    const/4 v9, 0x0

    .line 1907
    .local v9, "result":Landroid/support/v4/media/session/p;
    if-eqz v12, :cond_3

    .line 1908
    invoke-virtual {v12}, Landroid/support/v4/media/session/p;->a()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    .line 1909
    invoke-virtual {v12}, Landroid/support/v4/media/session/p;->a()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    .line 1910
    invoke-virtual {v12}, Landroid/support/v4/media/session/p;->a()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_3

    .line 1911
    :cond_1
    invoke-virtual {v12}, Landroid/support/v4/media/session/p;->i()J

    move-result-wide v14

    .line 1912
    .local v14, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1913
    .local v7, "currentTime":J
    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_3

    .line 1914
    invoke-virtual {v12}, Landroid/support/v4/media/session/p;->d()F

    move-result v3

    sub-long v16, v7, v14

    move-wide/from16 v0, v16

    long-to-float v6, v0

    mul-float/2addr v3, v6

    float-to-long v0, v3

    move-wide/from16 v16, v0

    .line 1915
    invoke-virtual {v12}, Landroid/support/v4/media/session/p;->b()J

    move-result-wide v18

    add-long v4, v16, v18

    .line 1916
    .local v4, "position":J
    const-wide/16 v16, 0x0

    cmp-long v3, v10, v16

    if-ltz v3, :cond_4

    cmp-long v3, v4, v10

    if-lez v3, :cond_4

    .line 1917
    move-wide v4, v10

    .line 1921
    :cond_2
    :goto_0
    new-instance v2, Landroid/support/v4/media/session/p$b;

    invoke-direct {v2, v12}, Landroid/support/v4/media/session/p$b;-><init>(Landroid/support/v4/media/session/p;)V

    .line 1923
    .local v2, "builder":Landroid/support/v4/media/session/p$b;
    invoke-virtual {v12}, Landroid/support/v4/media/session/p;->a()I

    move-result v3

    invoke-virtual {v12}, Landroid/support/v4/media/session/p;->d()F

    move-result v6

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/session/p$b;->a(IJFJ)Landroid/support/v4/media/session/p$b;

    .line 1925
    invoke-virtual {v2}, Landroid/support/v4/media/session/p$b;->a()Landroid/support/v4/media/session/p;

    move-result-object v9

    .line 1929
    .end local v2    # "builder":Landroid/support/v4/media/session/p$b;
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v14    # "updateTime":J
    :cond_3
    if-nez v9, :cond_5

    .end local v12    # "state":Landroid/support/v4/media/session/p;
    :goto_1
    return-object v12

    .line 1904
    .end local v9    # "result":Landroid/support/v4/media/session/p;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1918
    .restart local v4    # "position":J
    .restart local v7    # "currentTime":J
    .restart local v9    # "result":Landroid/support/v4/media/session/p;
    .restart local v12    # "state":Landroid/support/v4/media/session/p;
    .restart local v14    # "updateTime":J
    :cond_4
    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-gez v3, :cond_2

    .line 1919
    const-wide/16 v4, 0x0

    goto :goto_0

    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v14    # "updateTime":J
    :cond_5
    move-object v12, v9

    .line 1929
    goto :goto_1
.end method
