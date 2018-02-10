.class Lcom/jiliguala/niuwa/logic/k/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/k/b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/k/b;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/k/b;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/b$2;->b:Lcom/jiliguala/niuwa/logic/k/b;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/k/b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 85
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->c()[B

    move-result-object v3

    monitor-enter v3

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/b$2;->b:Lcom/jiliguala/niuwa/logic/k/b;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/k/b;->d:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    const-string v0, "key = ? "

    .line 88
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/k/b$2;->a:Ljava/lang/String;

    aput-object v4, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .local v1, "selectionArgs":[Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/jiliguala/niuwa/logic/db/a/d;->b:Landroid/net/Uri;

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 94
    return-void

    .line 93
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 91
    .restart local v0    # "selection":Ljava/lang/String;
    .restart local v1    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
