.class Lcom/jiliguala/niuwa/logic/k/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/a;->a(Lcom/jiliguala/niuwa/logic/db/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/db/a/a;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/k/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/k/a;Lcom/jiliguala/niuwa/logic/db/a/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/k/a;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/a$1;->b:Lcom/jiliguala/niuwa/logic/k/a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/k/a$1;->a:Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a$1;->b:Lcom/jiliguala/niuwa/logic/k/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/k/a;->a(Lcom/jiliguala/niuwa/logic/k/a;)[B

    move-result-object v1

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a$1;->b:Lcom/jiliguala/niuwa/logic/k/a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/k/a;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/k/a$1;->a:Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/a/a;->d()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
