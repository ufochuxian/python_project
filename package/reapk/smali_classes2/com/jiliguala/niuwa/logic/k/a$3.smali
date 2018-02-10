.class Lcom/jiliguala/niuwa/logic/k/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/a;->b(Lcom/jiliguala/niuwa/logic/db/a/a;)V
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
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/a$3;->b:Lcom/jiliguala/niuwa/logic/k/a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/k/a$3;->a:Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 122
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/k/a$3;->b:Lcom/jiliguala/niuwa/logic/k/a;

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/k/a;->a(Lcom/jiliguala/niuwa/logic/k/a;)[B

    move-result-object v4

    monitor-enter v4

    .line 123
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/k/a$3;->b:Lcom/jiliguala/niuwa/logic/k/a;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/k/a;->d:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    const-string v2, "resId = ? AND babyId = ?"

    .line 125
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/k/a$3;->a:Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/db/a/a;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 126
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/k/a$3;->a:Lcom/jiliguala/niuwa/logic/db/a/a;

    .line 127
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/db/a/a;->d()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "row":I
    if-gtz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/k/a$3;->a:Lcom/jiliguala/niuwa/logic/db/a/a;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/db/a/a;->d()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 132
    :cond_0
    monitor-exit v4

    .line 133
    return-void

    .line 132
    .end local v0    # "row":I
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    .end local v2    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
