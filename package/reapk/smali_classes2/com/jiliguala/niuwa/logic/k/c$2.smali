.class Lcom/jiliguala/niuwa/logic/k/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/c;->b(Lcom/jiliguala/niuwa/logic/db/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/db/a/e;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/k/c;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/k/c;Lcom/jiliguala/niuwa/logic/db/a/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/k/c;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/c$2;->b:Lcom/jiliguala/niuwa/logic/k/c;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/k/c$2;->a:Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 155
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/c$2;->b:Lcom/jiliguala/niuwa/logic/k/c;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/k/c;->a(Lcom/jiliguala/niuwa/logic/k/c;)[B

    move-result-object v3

    monitor-enter v3

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/c$2;->b:Lcom/jiliguala/niuwa/logic/k/c;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/k/c;->d:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    const-string v0, "resId = ? "

    .line 158
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/k/c$2;->a:Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/db/a/e;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 159
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 160
    monitor-exit v3

    .line 161
    return-void

    .line 160
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
