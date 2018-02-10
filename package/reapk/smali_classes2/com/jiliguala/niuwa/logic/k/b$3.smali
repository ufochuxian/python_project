.class Lcom/jiliguala/niuwa/logic/k/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/b;->b(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 99
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->c:Lcom/jiliguala/niuwa/logic/k/b;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 102
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->c()[B

    move-result-object v4

    monitor-enter v4

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->c:Lcom/jiliguala/niuwa/logic/k/b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/k/b;->d:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    const-string v2, "key = ? "

    .line 105
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->a:Ljava/lang/String;

    aput-object v5, v1, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 106
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/jiliguala/niuwa/logic/db/a/d;->b:Landroid/net/Uri;

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->c:Lcom/jiliguala/niuwa/logic/k/b;

    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->b:Ljava/lang/String;

    .line 107
    invoke-static {v6, v7, v8}, Lcom/jiliguala/niuwa/logic/k/b;->a(Lcom/jiliguala/niuwa/logic/k/b;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 108
    .local v0, "row":I
    if-gtz v0, :cond_0

    .line 111
    :try_start_1
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/jiliguala/niuwa/logic/db/a/d;->b:Landroid/net/Uri;

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->c:Lcom/jiliguala/niuwa/logic/k/b;

    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/k/b$3;->b:Ljava/lang/String;

    .line 112
    invoke-static {v6, v7, v8}, Lcom/jiliguala/niuwa/logic/k/b;->a(Lcom/jiliguala/niuwa/logic/k/b;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 117
    return-void

    .line 116
    .end local v0    # "row":I
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    .end local v2    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 113
    .restart local v0    # "row":I
    .restart local v1    # "selectionArgs":[Ljava/lang/String;
    .restart local v2    # "where":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
