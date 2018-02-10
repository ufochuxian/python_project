.class Landroid/support/v4/media/session/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/c$d$b;,
        Landroid/support/v4/media/session/c$d$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field private b:Landroid/support/v4/media/session/b;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/support/v4/media/session/c$a;",
            "Landroid/support/v4/media/session/c$d$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/g$i;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionToken"    # Landroid/support/v4/media/session/g$i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/c$d;->c:Ljava/util/HashMap;

    .line 1625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/c$d;->d:Ljava/util/List;

    .line 1636
    invoke-virtual {p2}, Landroid/support/v4/media/session/g$i;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1635
    invoke-static {p1, v0}, Landroid/support/v4/media/session/d;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    .line 1637
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1638
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/media/session/c$d;->o()V

    .line 1639
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/g;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Landroid/support/v4/media/session/g;

    .prologue
    .line 1627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/c$d;->c:Ljava/util/HashMap;

    .line 1625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/c$d;->d:Ljava/util/List;

    .line 1629
    invoke-virtual {p2}, Landroid/support/v4/media/session/g;->c()Landroid/support/v4/media/session/g$i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/g$i;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1628
    invoke-static {p1, v0}, Landroid/support/v4/media/session/d;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    .line 1630
    invoke-direct {p0}, Landroid/support/v4/media/session/c$d;->o()V

    .line 1631
    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/session/c$d;)Landroid/support/v4/media/session/b;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/c$d;

    .prologue
    .line 1618
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/media/session/c$d;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/b;
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/media/session/c$d;
    .param p1, "x1"    # Landroid/support/v4/media/session/b;

    .prologue
    .line 1618
    iput-object p1, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v4/media/session/c$d;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/media/session/c$d;

    .prologue
    .line 1618
    invoke-direct {p0}, Landroid/support/v4/media/session/c$d;->p()V

    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 1862
    const-string v0, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    const/4 v1, 0x0

    new-instance v2, Landroid/support/v4/media/session/c$d$a;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Landroid/support/v4/media/session/c$d$a;-><init>(Landroid/support/v4/media/session/c$d;Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/session/c$d;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1864
    return-void
.end method

.method private p()V
    .locals 6

    .prologue
    .line 1867
    iget-object v3, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    if-nez v3, :cond_0

    .line 1884
    :goto_0
    return-void

    .line 1870
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/session/c$d;->d:Ljava/util/List;

    monitor-enter v4

    .line 1871
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/session/c$d;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c$a;

    .line 1872
    .local v0, "callback":Landroid/support/v4/media/session/c$a;
    new-instance v2, Landroid/support/v4/media/session/c$d$b;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/media/session/c$d$b;-><init>(Landroid/support/v4/media/session/c$d;Landroid/support/v4/media/session/c$a;)V

    .line 1873
    .local v2, "extraCallback":Landroid/support/v4/media/session/c$d$b;
    iget-object v5, p0, Landroid/support/v4/media/session/c$d;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/support/v4/media/session/c$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1876
    :try_start_1
    iget-object v5, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v5, v2}, Landroid/support/v4/media/session/b;->a(Landroid/support/v4/media/session/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1877
    :catch_0
    move-exception v1

    .line 1878
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MediaControllerCompat"

    const-string v5, "Dead object in registerCallback."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1882
    .end local v0    # "callback":Landroid/support/v4/media/session/c$a;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "extraCallback":Landroid/support/v4/media/session/c$d$b;
    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/session/c$d;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1883
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/c$i;
    .locals 2

    .prologue
    .line 1689
    iget-object v1, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1690
    .local v0, "controlsObj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v4/media/session/c$j;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/c$j;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 1758
    invoke-virtual {p0}, Landroid/support/v4/media/session/c$d;->j()J

    move-result-wide v0

    .line 1759
    .local v0, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1760
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1763
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1764
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1765
    const-string v3, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v4/media/session/c$d;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1766
    return-void
.end method

.method public a(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1837
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/d;->a(Ljava/lang/Object;II)V

    .line 1838
    return-void
.end method

.method public a(Landroid/support/v4/media/j;)V
    .locals 8
    .param p1, "description"    # Landroid/support/v4/media/j;

    .prologue
    .line 1721
    invoke-virtual {p0}, Landroid/support/v4/media/session/c$d;->j()J

    move-result-wide v0

    .line 1722
    .local v0, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1723
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1726
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1727
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1728
    const-string v3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v4/media/session/c$d;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1729
    return-void
.end method

.method public a(Landroid/support/v4/media/j;I)V
    .locals 8
    .param p1, "description"    # Landroid/support/v4/media/j;
    .param p2, "index"    # I

    .prologue
    .line 1733
    invoke-virtual {p0}, Landroid/support/v4/media/session/c$d;->j()J

    move-result-wide v0

    .line 1734
    .local v0, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1735
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1738
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1739
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1740
    const-string v3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1741
    const-string v3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v4/media/session/c$d;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1742
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/c$a;)V
    .locals 4
    .param p1, "callback"    # Landroid/support/v4/media/session/c$a;

    .prologue
    .line 1665
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/media/session/c$a;->a(Landroid/support/v4/media/session/c$a;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/media/session/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1666
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    if-eqz v2, :cond_1

    .line 1668
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/c$d$b;

    .line 1669
    .local v1, "extraCallback":Landroid/support/v4/media/session/c$d$b;
    if-eqz v1, :cond_0

    .line 1670
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v2, v1}, Landroid/support/v4/media/session/b;->b(Landroid/support/v4/media/session/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    .end local v1    # "extraCallback":Landroid/support/v4/media/session/c$d$b;
    :cond_0
    :goto_0
    return-void

    .line 1672
    :catch_0
    move-exception v0

    .line 1673
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in unregisterCallback."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1676
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/session/c$d;->d:Ljava/util/List;

    monitor-enter v3

    .line 1677
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1678
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final a(Landroid/support/v4/media/session/c$a;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/support/v4/media/session/c$a;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1643
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    .line 1644
    invoke-static {p1}, Landroid/support/v4/media/session/c$a;->a(Landroid/support/v4/media/session/c$a;)Ljava/lang/Object;

    move-result-object v3

    .line 1643
    invoke-static {v2, v3, p2}, Landroid/support/v4/media/session/d;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 1645
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    if-eqz v2, :cond_0

    .line 1646
    invoke-static {p1, p2}, Landroid/support/v4/media/session/c$a;->a(Landroid/support/v4/media/session/c$a;Landroid/os/Handler;)V

    .line 1647
    new-instance v1, Landroid/support/v4/media/session/c$d$b;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/session/c$d$b;-><init>(Landroid/support/v4/media/session/c$d;Landroid/support/v4/media/session/c$a;)V

    .line 1648
    .local v1, "extraCallback":Landroid/support/v4/media/session/c$d$b;
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/support/v4/media/session/c$a;->b:Z

    .line 1651
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v2, v1}, Landroid/support/v4/media/session/b;->a(Landroid/support/v4/media/session/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    .end local v1    # "extraCallback":Landroid/support/v4/media/session/c$d$b;
    :goto_0
    return-void

    .line 1652
    .restart local v1    # "extraCallback":Landroid/support/v4/media/session/c$d$b;
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in registerCallback."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1656
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "extraCallback":Landroid/support/v4/media/session/c$d$b;
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/media/session/c$a;->a(Landroid/support/v4/media/session/c$a;Landroid/os/Handler;)V

    .line 1657
    iget-object v3, p0, Landroid/support/v4/media/session/c$d;->d:Ljava/util/List;

    monitor-enter v3

    .line 1658
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1659
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1847
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/media/session/d;->a(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1848
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1684
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/d;->a(Ljava/lang/Object;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/media/session/p;
    .locals 4

    .prologue
    .line 1695
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    if-eqz v2, :cond_0

    .line 1697
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v2}, Landroid/support/v4/media/session/b;->h()Landroid/support/v4/media/session/p;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1703
    :goto_0
    return-object v2

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getPlaybackState."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1702
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v2}, Landroid/support/v4/media/session/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1703
    .local v1, "stateObj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/support/v4/media/session/p;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/p;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1842
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/d;->b(Ljava/lang/Object;II)V

    .line 1843
    return-void
.end method

.method public b(Landroid/support/v4/media/j;)V
    .locals 8
    .param p1, "description"    # Landroid/support/v4/media/j;

    .prologue
    .line 1746
    invoke-virtual {p0}, Landroid/support/v4/media/session/c$d;->j()J

    move-result-wide v0

    .line 1747
    .local v0, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1748
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1751
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1752
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1753
    const-string v3, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v4/media/session/c$d;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1754
    return-void
.end method

.method public c()Landroid/support/v4/media/m;
    .locals 2

    .prologue
    .line 1708
    iget-object v1, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1709
    .local v0, "metadataObj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/m;->a(Ljava/lang/Object;)Landroid/support/v4/media/m;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/g$f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1714
    iget-object v1, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/d;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1715
    .local v0, "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/session/g$f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->g(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 3

    .prologue
    .line 1780
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    if-eqz v1, :cond_0

    .line 1782
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->l()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1787
    :goto_0
    return v1

    .line 1783
    :catch_0
    move-exception v0

    .line 1784
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1787
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/d;->h(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public h()I
    .locals 3

    .prologue
    .line 1792
    iget-object v1, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    if-eqz v1, :cond_0

    .line 1794
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->m()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1799
    :goto_0
    return v1

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRepeatMode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1799
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 3

    .prologue
    .line 1804
    iget-object v1, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    if-eqz v1, :cond_0

    .line 1806
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$d;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->n()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1811
    :goto_0
    return v1

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in isShuffleModeEnabled."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1811
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 1816
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->i(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Landroid/support/v4/media/session/c$h;
    .locals 7

    .prologue
    .line 1821
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1822
    .local v6, "volumeInfoObj":Ljava/lang/Object;
    if-eqz v6, :cond_0

    new-instance v0, Landroid/support/v4/media/session/c$h;

    .line 1823
    invoke-static {v6}, Landroid/support/v4/media/session/d$c;->a(Ljava/lang/Object;)I

    move-result v1

    .line 1824
    invoke-static {v6}, Landroid/support/v4/media/session/d$c;->c(Ljava/lang/Object;)I

    move-result v2

    .line 1825
    invoke-static {v6}, Landroid/support/v4/media/session/d$c;->d(Ljava/lang/Object;)I

    move-result v3

    .line 1826
    invoke-static {v6}, Landroid/support/v4/media/session/d$c;->e(Ljava/lang/Object;)I

    move-result v4

    .line 1827
    invoke-static {v6}, Landroid/support/v4/media/session/d$c;->f(Ljava/lang/Object;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/c$h;-><init>(IIIII)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->k(Ljava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->l(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Landroid/support/v4/media/session/c$d;->a:Ljava/lang/Object;

    return-object v0
.end method
