.class Lcom/jiliguala/niuwa/logic/k/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/e;->a(Lcom/jiliguala/niuwa/logic/db/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/db/a/g;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/k/e;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/k/e;Lcom/jiliguala/niuwa/logic/db/a/g;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/k/e;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/e$2;->b:Lcom/jiliguala/niuwa/logic/k/e;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/k/e$2;->a:Lcom/jiliguala/niuwa/logic/db/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/e$2;->b:Lcom/jiliguala/niuwa/logic/k/e;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/k/e;->a(Lcom/jiliguala/niuwa/logic/k/e;)[B

    move-result-object v1

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/e$2;->b:Lcom/jiliguala/niuwa/logic/k/e;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/k/e;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/jiliguala/niuwa/logic/db/a/g;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/k/e$2;->a:Lcom/jiliguala/niuwa/logic/db/a/g;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/a/g;->d()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
