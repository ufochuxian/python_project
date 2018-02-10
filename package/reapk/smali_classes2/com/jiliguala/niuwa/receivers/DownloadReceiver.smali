.class public Lcom/jiliguala/niuwa/receivers/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;)V
    .locals 0
    .param p1, "downloadInterface"    # Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;->b:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    .line 22
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 26
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "type"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 33
    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    .line 86
    .end local v9    # "type":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 35
    .restart local v9    # "type":I
    :pswitch_1
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "id":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "url":Ljava/lang/String;
    const-string v0, "download_type"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 39
    .local v3, "download_type":I
    const-string v0, "is_paused"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 40
    .local v8, "isPaused":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;->b:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    invoke-interface {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;->onDownloadTaskAdded(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 45
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "download_type":I
    .end local v8    # "isPaused":Z
    :pswitch_2
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .restart local v1    # "id":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .restart local v2    # "url":Ljava/lang/String;
    const-string v0, "full_path"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "full_path":Ljava/lang/String;
    const-string v0, "download_type"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 50
    .restart local v3    # "download_type":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;->b:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;->onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    :cond_1
    sput-boolean v11, Lcom/jiliguala/niuwa/MyApplication;->isPrepareRes:Z

    goto :goto_0

    .line 56
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "download_type":I
    .end local v7    # "full_path":Ljava/lang/String;
    :pswitch_3
    const-string v0, "process_progress"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 57
    .local v4, "progress":J
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .restart local v1    # "id":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .restart local v2    # "url":Ljava/lang/String;
    const-string v0, "download_type"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 64
    .restart local v3    # "download_type":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;->b:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    invoke-interface/range {v0 .. v5}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;->onDownloadTaskProgress(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->isPrepareRes:Z

    goto :goto_0

    .line 68
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "download_type":I
    .end local v4    # "progress":J
    :pswitch_4
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1    # "id":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .restart local v2    # "url":Ljava/lang/String;
    const-string v0, "download_type"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 71
    .restart local v3    # "download_type":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;->b:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    invoke-interface {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;->onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 74
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "download_type":I
    :pswitch_5
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1    # "id":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .restart local v2    # "url":Ljava/lang/String;
    const-string v0, "error_code"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 77
    .local v6, "errorCode":I
    const-string v0, "download_type"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 78
    .restart local v3    # "download_type":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;->b:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;->onDownloadTaskError(Ljava/lang/String;Ljava/lang/String;II)V

    .line 80
    sput-boolean v11, Lcom/jiliguala/niuwa/MyApplication;->isPrepareRes:Z

    goto/16 :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
