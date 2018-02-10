.class Lcom/jiliguala/niuwa/services/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/services/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/services/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/jiliguala/niuwa/services/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/services/b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/services/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/services/b;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/b$1;->a:Lcom/jiliguala/niuwa/services/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/services/c;)V
    .locals 4
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "updateIntent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v1, "process_progress"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 335
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "download_type"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$1;->a:Lcom/jiliguala/niuwa/services/b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/b;->a(Lcom/jiliguala/niuwa/services/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/services/c;Ljava/lang/Throwable;I)V
    .locals 3
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;
    .param p2, "error"    # Ljava/lang/Throwable;
    .param p3, "errorCode"    # I

    .prologue
    .line 355
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$1;->a:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/services/b;->c(Ljava/lang/String;)V

    .line 361
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "errorIntent":Landroid/content/Intent;
    const-string v1, "type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const-string v1, "download_type"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/services/c;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$1;->a:Lcom/jiliguala/niuwa/services/b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/b;->a(Lcom/jiliguala/niuwa/services/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    return-void
.end method

.method public b(Lcom/jiliguala/niuwa/services/c;)V
    .locals 0
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;

    .prologue
    .line 344
    return-void
.end method

.method public c(Lcom/jiliguala/niuwa/services/c;)V
    .locals 1
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b$1;->a:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/services/b;->c(Lcom/jiliguala/niuwa/services/c;)V

    .line 350
    return-void
.end method
