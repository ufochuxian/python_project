.class Lcom/squareup/picasso/i$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "state"


# instance fields
.field private final b:Lcom/squareup/picasso/i;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/i;)V
    .locals 0
    .param p1, "dispatcher"    # Lcom/squareup/picasso/i;

    .prologue
    .line 543
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 544
    iput-object p1, p0, Lcom/squareup/picasso/i$c;->b:Lcom/squareup/picasso/i;

    .line 545
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 548
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 549
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/squareup/picasso/i$c;->b:Lcom/squareup/picasso/i;

    iget-boolean v1, v1, Lcom/squareup/picasso/i;->B:Z

    if-eqz v1, :cond_0

    .line 551
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/i$c;->b:Lcom/squareup/picasso/i;

    iget-object v1, v1, Lcom/squareup/picasso/i;->o:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 554
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/squareup/picasso/i$c;->b:Lcom/squareup/picasso/i;

    iget-object v0, v0, Lcom/squareup/picasso/i;->o:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 563
    if-nez p2, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 568
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/squareup/picasso/i$c;->b:Lcom/squareup/picasso/i;

    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/i;->a(Z)V

    goto :goto_0

    .line 572
    :cond_2
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    const-string v2, "connectivity"

    invoke-static {p1, v2}, Lcom/squareup/picasso/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 574
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/squareup/picasso/i$c;->b:Lcom/squareup/picasso/i;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/i;->a(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method
