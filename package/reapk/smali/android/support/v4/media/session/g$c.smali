.class Landroid/support/v4/media/session/g$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/g$c$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/support/v4/media/session/g$i;

.field private f:Z

.field private g:Landroid/support/v4/media/session/g$c$a;

.field private final h:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/support/v4/media/session/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/v4/media/session/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2560
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/g$c;->f:Z

    .line 2562
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    .line 2571
    invoke-static {p1, p2}, Landroid/support/v4/media/session/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    .line 2572
    new-instance v0, Landroid/support/v4/media/session/g$i;

    iget-object v1, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/k;->e(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/g$i;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g$c;->e:Landroid/support/v4/media/session/g$i;

    .line 2573
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "mediaSession"    # Ljava/lang/Object;

    .prologue
    .line 2575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2560
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/g$c;->f:Z

    .line 2562
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    .line 2576
    invoke-static {p1}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    .line 2577
    new-instance v0, Landroid/support/v4/media/session/g$i;

    iget-object v1, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/k;->e(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/g$i;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g$c;->e:Landroid/support/v4/media/session/g$i;

    .line 2578
    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/session/g$c;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/g$c;

    .prologue
    .line 2556
    iget-boolean v0, p0, Landroid/support/v4/media/session/g$c;->f:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v4/media/session/g$c;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/g$c;

    .prologue
    .line 2556
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v4/media/session/g$c;)Landroid/support/v4/media/session/p;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/g$c;

    .prologue
    .line 2556
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->i:Landroid/support/v4/media/session/p;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 2591
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;I)V

    .line 2592
    return-void
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 2666
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 2667
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2734
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 2735
    return-void
.end method

.method public a(Landroid/support/v4/media/m;)V
    .locals 2
    .param p1, "metadata"    # Landroid/support/v4/media/m;

    .prologue
    .line 2660
    iget-object v1, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/k;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2662
    return-void

    .line 2661
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/m;->e()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/g$a;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v4/media/session/g$a;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2582
    iget-object v1, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0, p2}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 2584
    if-eqz p1, :cond_0

    .line 2585
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Landroid/support/v4/media/session/g$a;->c:Ljava/lang/ref/WeakReference;

    .line 2587
    :cond_0
    return-void

    .line 2582
    :cond_1
    iget-object v0, p1, Landroid/support/v4/media/session/g$a;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/p;)V
    .locals 5
    .param p1, "state"    # Landroid/support/v4/media/session/p;

    .prologue
    .line 2644
    iput-object p1, p0, Landroid/support/v4/media/session/g$c;->i:Landroid/support/v4/media/session/p;

    .line 2645
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2646
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2647
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 2649
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/session/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2646
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2653
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2654
    iget-object v4, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :goto_2
    invoke-static {v4, v3}, Landroid/support/v4/media/session/k;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2656
    return-void

    .line 2655
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/p;->l()Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 2650
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public a(Landroid/support/v4/media/x;)V
    .locals 2
    .param p1, "volumeProvider"    # Landroid/support/v4/media/x;

    .prologue
    .line 2601
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    .line 2602
    invoke-virtual {p1}, Landroid/support/v4/media/x;->d()Ljava/lang/Object;

    move-result-object v1

    .line 2601
    invoke-static {v0, v1}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2603
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2688
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2689
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2617
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 2618
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2619
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2620
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 2622
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2619
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2626
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2628
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2629
    return-void

    .line 2623
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
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
    .line 2676
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/g$f;>;"
    const/4 v1, 0x0

    .line 2677
    .local v1, "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 2678
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2679
    .restart local v1    # "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/g$f;

    .line 2680
    .local v0, "item":Landroid/support/v4/media/session/g$f;
    invoke-virtual {v0}, Landroid/support/v4/media/session/g$f;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2683
    .end local v0    # "item":Landroid/support/v4/media/session/g$f;
    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;Ljava/util/List;)V

    .line 2684
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 2607
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;Z)V

    .line 2608
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/k;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2633
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/session/g$c;->f:Z

    .line 2634
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/k;->d(Ljava/lang/Object;)V

    .line 2635
    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 2596
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/k;->b(Ljava/lang/Object;I)V

    .line 2597
    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .prologue
    .line 2671
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/k;->b(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 2672
    return-void
.end method

.method public b(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2718
    iget-boolean v3, p0, Landroid/support/v4/media/session/g$c;->c:Z

    if-eq v3, p1, :cond_1

    .line 2719
    iput-boolean p1, p0, Landroid/support/v4/media/session/g$c;->c:Z

    .line 2720
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2721
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2722
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 2724
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2721
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2728
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2730
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-void

    .line 2725
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public c()Landroid/support/v4/media/session/g$i;
    .locals 1

    .prologue
    .line 2639
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->e:Landroid/support/v4/media/session/g$i;

    return-object v0
.end method

.method public c(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2693
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 2694
    iput p1, p0, Landroid/support/v4/media/session/g$c;->a:I

    .line 2698
    :goto_0
    return-void

    .line 2696
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/l;->a(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2739
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public d(I)V
    .locals 4
    .param p1, "repeatMode"    # I

    .prologue
    .line 2702
    iget v3, p0, Landroid/support/v4/media/session/g$c;->b:I

    if-eq v3, p1, :cond_1

    .line 2703
    iput p1, p0, Landroid/support/v4/media/session/g$c;->b:I

    .line 2704
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2705
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2706
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 2708
    .local v0, "cb":Landroid/support/v4/media/session/a;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2705
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2712
    .end local v0    # "cb":Landroid/support/v4/media/session/a;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/g$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2714
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-void

    .line 2709
    .restart local v0    # "cb":Landroid/support/v4/media/session/a;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2744
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2749
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 2750
    const/4 v0, 0x0

    .line 2752
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->d:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/n;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method g()Landroid/support/v4/media/session/g$c$a;
    .locals 1

    .prologue
    .line 2757
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->g:Landroid/support/v4/media/session/g$c$a;

    if-nez v0, :cond_0

    .line 2758
    new-instance v0, Landroid/support/v4/media/session/g$c$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/g$c$a;-><init>(Landroid/support/v4/media/session/g$c;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g$c;->g:Landroid/support/v4/media/session/g$c$a;

    .line 2760
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/g$c;->g:Landroid/support/v4/media/session/g$c$a;

    return-object v0
.end method
