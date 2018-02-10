.class public Lcom/jiliguala/niuwa/services/TimerService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "BUNDLE_MILLIS"

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:J

.field private d:Landroid/os/CountDownTimer;

.field private e:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/jiliguala/niuwa/services/TimerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/services/TimerService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/services/TimerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/TimerService;

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/jiliguala/niuwa/services/TimerService;->c:J

    return-wide v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/services/TimerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/TimerService;
    .param p1, "x1"    # J

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/jiliguala/niuwa/services/TimerService;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/services/TimerService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/TimerService;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/TimerService;->d:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method private a(J)V
    .locals 5
    .param p1, "timeInMillis"    # J

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 55
    .local v2, "m":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_MILLIS"

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 57
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/services/TimerService;->e:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/jiliguala/niuwa/services/TimerService;->e:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/services/TimerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/TimerService;
    .param p1, "x1"    # J

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/services/TimerService;->a(J)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TimerService;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TimerService;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 78
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x2

    .line 26
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return v6

    .line 29
    :cond_0
    const-string v0, "messenger"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/TimerService;->e:Landroid/os/Messenger;

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TimerService;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TimerService;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 37
    :goto_1
    new-instance v0, Lcom/jiliguala/niuwa/services/TimerService$1;

    iget-wide v2, p0, Lcom/jiliguala/niuwa/services/TimerService;->c:J

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/services/TimerService$1;-><init>(Lcom/jiliguala/niuwa/services/TimerService;JJ)V

    .line 49
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/TimerService$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/TimerService;->d:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "millis"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/TimerService;->c:J

    goto :goto_1
.end method
