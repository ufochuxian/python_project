.class Lcom/jiliguala/niuwa/logic/k/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/b;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/logic/k/b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/k/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/k/b;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/b$1;->c:Lcom/jiliguala/niuwa/logic/k/b;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/k/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/k/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 70
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->c()[B

    move-result-object v1

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/b$1;->c:Lcom/jiliguala/niuwa/logic/k/b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/k/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/jiliguala/niuwa/logic/db/a/d;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/k/b$1;->c:Lcom/jiliguala/niuwa/logic/k/b;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/k/b$1;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/k/b$1;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/jiliguala/niuwa/logic/k/b;->a(Lcom/jiliguala/niuwa/logic/k/b;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method
