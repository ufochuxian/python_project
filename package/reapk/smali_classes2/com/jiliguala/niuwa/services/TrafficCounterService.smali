.class public Lcom/jiliguala/niuwa/services/TrafficCounterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I = 0x3e8


# instance fields
.field private c:Ljava/util/Timer;

.field private d:Ljava/util/TimerTask;

.field private e:Landroid/net/ConnectivityManager;

.field private f:Landroid/telephony/TelephonyManager;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Landroid/net/NetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jiliguala/niuwa/services/TrafficCounterService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->g:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->i:J

    .line 114
    iget v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->g:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->j:J

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->m:Landroid/net/NetworkInfo;

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->m:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->m:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/services/TrafficCounterService;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/TrafficCounterService;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jiliguala/niuwa/services/TrafficCounterService;->a()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    .line 46
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/services/TrafficCounterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->e:Landroid/net/ConnectivityManager;

    .line 48
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/services/TrafficCounterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->f:Landroid/telephony/TelephonyManager;

    .line 50
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/TrafficCounterService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 51
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 53
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/TrafficCounterService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 54
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->g:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->c:Ljava/util/Timer;

    .line 60
    new-instance v0, Lcom/jiliguala/niuwa/services/TrafficCounterService$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/services/TrafficCounterService$1;-><init>(Lcom/jiliguala/niuwa/services/TrafficCounterService;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->d:Ljava/util/TimerTask;

    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->d:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 70
    iget v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->g:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->i:J

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->k:J

    .line 71
    iget v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->g:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->j:J

    iput-wide v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->l:J

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->c:Ljava/util/Timer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->d:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->h:Ljava/lang/String;

    .line 86
    :cond_0
    return-void

    .line 55
    :catch_0
    move-exception v6

    .line 56
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/jiliguala/niuwa/services/TrafficCounterService;->a()V

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->d:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->d:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 109
    :cond_1
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 93
    return-void
.end method
