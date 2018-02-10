.class public Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.yanzhenjie.andserver.receiver"

.field private static final CMD_KEY:Ljava/lang/String; = "CMD_KEY"

.field private static final CMD_VALUE_START:I = 0x1

.field private static final CMD_VALUE_STARTED:I = 0x2

.field private static final CMD_VALUE_STOP:I = 0x3

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private static sendBroadcast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cmd"    # I

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yanzhenjie.andserver.receiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "CMD_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public static serverHasStarted(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->sendBroadcast(Landroid/content/Context;I)V

    .line 53
    return-void
.end method

.method public static serverStart(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->sendBroadcast(Landroid/content/Context;I)V

    .line 44
    return-void
.end method

.method public static serverStop(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->sendBroadcast(Landroid/content/Context;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public enableInnerContainer()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public exitCurrentSubCourse()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public hasCoursePay()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public hasStop()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public isInteractCourseFragmentVisible()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.yanzhenjie.andserver.receiver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const-string v2, "CMD_KEY"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 96
    .local v1, "cmd":I
    packed-switch v1, :pswitch_data_0

    .line 111
    .end local v1    # "cmd":I
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v1    # "cmd":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->serverStart()V

    goto :goto_0

    .line 102
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->serverHasStarted()V

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->serverStop()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public register()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yanzhenjie.andserver.receiver"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public serverHasStarted()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->mContext:Landroid/content/Context;

    const v1, 0x7f0f01b0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->showGame()V

    .line 150
    return-void
.end method

.method public serverStart()V
    .locals 6

    .prologue
    .line 118
    const/4 v2, 0x1

    sput-boolean v2, Lcom/jiliguala/niuwa/MyApplication;->initLocalServer:Z

    .line 119
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f0f01af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "ip":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nhttp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":8080/\nhttp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":8080/login\nhttp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":8080/upload\nhttp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":8080/index\nhttp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":8080/error.html\nhttp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":8080/login.html\nhttp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":8080/image/image.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver$1;-><init>(Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void
.end method

.method public serverStop()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->initLocalServer:Z

    .line 158
    return-void
.end method

.method public showGame()V
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/e;

    const/16 v2, 0x1028

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/e;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public unRegister()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method
