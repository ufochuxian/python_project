.class Lcom/jiliguala/niuwa/logic/k/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/k/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/k/a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/k/a;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/a$2;->b:Lcom/jiliguala/niuwa/logic/k/a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/k/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 107
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a$2;->b:Lcom/jiliguala/niuwa/logic/k/a;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/k/a;->a(Lcom/jiliguala/niuwa/logic/k/a;)[B

    move-result-object v3

    monitor-enter v3

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a$2;->b:Lcom/jiliguala/niuwa/logic/k/a;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/k/a;->d:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    const-string v0, "resId = ? AND babyId = ?"

    .line 110
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/k/a$2;->a:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 111
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    monitor-exit v3

    .line 113
    return-void

    .line 112
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
