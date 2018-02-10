.class Lcom/mob/tools/c/i$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/c/i;->a(Ljava/lang/Runnable;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Landroid/app/AlarmManager;

.field final synthetic d:J

.field final synthetic e:Landroid/app/PendingIntent;

.field final synthetic f:Lcom/mob/tools/c/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/c/i;Ljava/lang/Object;Ljava/lang/Runnable;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mob/tools/c/i;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mob/tools/c/i$1;->f:Lcom/mob/tools/c/i;

    iput-object p2, p0, Lcom/mob/tools/c/i$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mob/tools/c/i$1;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/mob/tools/c/i$1;->c:Landroid/app/AlarmManager;

    iput-wide p5, p0, Lcom/mob/tools/c/i$1;->d:J

    iput-object p7, p0, Lcom/mob/tools/c/i$1;->e:Landroid/app/PendingIntent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mob/tools/c/i$1;->f:Lcom/mob/tools/c/i;

    invoke-static {v0}, Lcom/mob/tools/c/i;->a(Lcom/mob/tools/c/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/mob/tools/c/i$1$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/c/i$1$1;-><init>(Lcom/mob/tools/c/i$1;)V

    .line 40
    invoke-virtual {v0}, Lcom/mob/tools/c/i$1$1;->start()V

    .line 41
    iget-object v0, p0, Lcom/mob/tools/c/i$1;->c:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mob/tools/c/i$1;->d:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mob/tools/c/i$1;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 43
    :cond_0
    return-void
.end method
