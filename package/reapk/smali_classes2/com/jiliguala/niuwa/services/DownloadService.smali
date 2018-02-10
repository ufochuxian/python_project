.class public Lcom/jiliguala/niuwa/services/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/services/DownloadService$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/jiliguala/niuwa/services/b;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.jiliguala.niuwa.service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    .line 15
    const-class v0, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/services/DownloadService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/services/DownloadService;)Lcom/jiliguala/niuwa/services/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/DownloadService;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/services/DownloadService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/DownloadService;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    new-instance v0, Lcom/jiliguala/niuwa/services/DownloadService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/services/DownloadService$a;-><init>(Lcom/jiliguala/niuwa/services/DownloadService;Lcom/jiliguala/niuwa/services/DownloadService$1;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    new-instance v0, Lcom/jiliguala/niuwa/services/b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/services/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    .line 32
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v8, -0x1

    .line 37
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "type"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 50
    .local v6, "type":I
    packed-switch v6, :pswitch_data_0

    .line 106
    .end local v6    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v6    # "type":I
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/b;->a()V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/b;->d()V

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "id":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "url":Ljava/lang/String;
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "path":Ljava/lang/String;
    const-string v0, "download_type"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 63
    .local v4, "download_type":I
    const-string v0, "interact_res_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->d:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    const/4 v0, 0x4

    if-ne v4, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/jiliguala/niuwa/services/DownloadService;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".zip"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "fileName":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/services/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/services/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 68
    :cond_3
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 78
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "download_type":I
    .end local v5    # "fileName":Ljava/lang/String;
    :pswitch_2
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .restart local v2    # "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/services/b;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    .end local v2    # "url":Ljava/lang/String;
    :pswitch_3
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .restart local v2    # "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/services/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    .end local v2    # "url":Ljava/lang/String;
    :pswitch_4
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .restart local v2    # "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/services/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    .end local v2    # "url":Ljava/lang/String;
    :pswitch_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/b;->b()V

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService;->c:Lcom/jiliguala/niuwa/services/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/services/b;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
