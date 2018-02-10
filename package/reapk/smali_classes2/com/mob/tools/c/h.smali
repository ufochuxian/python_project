.class public Lcom/mob/tools/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/location/Location;

.field private c:I

.field private d:I

.field private e:Landroid/location/LocationManager;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/mob/tools/b;

    invoke-direct {v0}, Lcom/mob/tools/b;-><init>()V

    .line 25
    .local v0, "thread":Lcom/mob/tools/b;
    invoke-virtual {v0}, Lcom/mob/tools/b;->start()V

    .line 26
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/b;->b()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/tools/c/h;->a:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 85
    iget v1, p0, Lcom/mob/tools/c/h;->c:I

    if-eqz v1, :cond_1

    move v6, v8

    .line 86
    .local v6, "preferGPS":Z
    :goto_0
    iget v1, p0, Lcom/mob/tools/c/h;->d:I

    if-eqz v1, :cond_2

    move v7, v8

    .line 87
    .local v7, "preferNetwork":Z
    :goto_1
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iput-boolean v8, p0, Lcom/mob/tools/c/h;->f:Z

    .line 89
    iget-object v0, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 90
    iget v0, p0, Lcom/mob/tools/c/h;->c:I

    if-lez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mob/tools/c/h;->a:Landroid/os/Handler;

    iget v1, p0, Lcom/mob/tools/c/h;->c:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    :cond_0
    :goto_2
    return-void

    .end local v6    # "preferGPS":Z
    .end local v7    # "preferNetwork":Z
    :cond_1
    move v6, v0

    .line 85
    goto :goto_0

    .restart local v6    # "preferGPS":Z
    :cond_2
    move v7, v0

    .line 86
    goto :goto_1

    .line 93
    .restart local v7    # "preferNetwork":Z
    :cond_3
    if-eqz v7, :cond_4

    iget-object v0, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    iput-boolean v8, p0, Lcom/mob/tools/c/h;->g:Z

    .line 95
    iget-object v0, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 96
    iget v0, p0, Lcom/mob/tools/c/h;->d:I

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mob/tools/c/h;->a:Landroid/os/Handler;

    iget v1, p0, Lcom/mob/tools/c/h;->d:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 100
    :cond_4
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/mob/tools/c/h;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_2

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 108
    iget-object v0, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 109
    iput-boolean v6, p0, Lcom/mob/tools/c/h;->f:Z

    .line 111
    iget v0, p0, Lcom/mob/tools/c/h;->d:I

    if-eqz v0, :cond_0

    move v6, v7

    .line 112
    .local v6, "preferNetwork":Z
    :cond_0
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iput-boolean v7, p0, Lcom/mob/tools/c/h;->g:Z

    .line 114
    iget-object v0, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 115
    iget v0, p0, Lcom/mob/tools/c/h;->d:I

    if-lez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/mob/tools/c/h;->a:Landroid/os/Handler;

    iget v1, p0, Lcom/mob/tools/c/h;->d:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/mob/tools/c/h;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/location/Location;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/c/h;->a(Landroid/content/Context;I)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;I)Landroid/location/Location;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "GPSTimeoutSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/c/h;->a(Landroid/content/Context;II)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;II)Landroid/location/Location;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "GPSTimeoutSec"    # I
    .param p3, "networkTimeoutSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mob/tools/c/h;->a(Landroid/content/Context;IIZ)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;IIZ)Landroid/location/Location;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "GPSTimeoutSec"    # I
    .param p3, "networkTimeoutSec"    # I
    .param p4, "useLastKnown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 44
    iput p2, p0, Lcom/mob/tools/c/h;->c:I

    .line 45
    iput p3, p0, Lcom/mob/tools/c/h;->d:I

    .line 47
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    .line 48
    iget-object v2, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    .line 49
    const/4 v2, 0x0

    .line 66
    :goto_0
    return-object v2

    .line 52
    :cond_0
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/c/h;->a:Landroid/os/Handler;

    const/4 v4, 0x0

    const-wide/16 v6, 0x32

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v2, p0, Lcom/mob/tools/c/h;->b:Landroid/location/Location;

    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    .line 58
    if-eqz p2, :cond_2

    move v0, v1

    .line 59
    .local v0, "preferGPS":Z
    :goto_1
    if-eqz p3, :cond_3

    .line 60
    .local v1, "preferNetwork":Z
    :goto_2
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    iget-object v2, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/tools/c/h;->b:Landroid/location/Location;

    .line 66
    .end local v0    # "preferGPS":Z
    .end local v1    # "preferNetwork":Z
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/mob/tools/c/h;->b:Landroid/location/Location;

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    move v0, v3

    .line 58
    goto :goto_1

    .restart local v0    # "preferGPS":Z
    :cond_3
    move v1, v3

    .line 59
    goto :goto_2

    .line 62
    .restart local v1    # "preferNetwork":Z
    :cond_4
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/tools/c/h;->b:Landroid/location/Location;

    goto :goto_3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/mob/tools/c/h;->a()V

    .line 81
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_1
    iget-boolean v0, p0, Lcom/mob/tools/c/h;->f:Z

    if-eqz v0, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/mob/tools/c/h;->b()V

    goto :goto_0

    .line 74
    :cond_2
    iget-boolean v0, p0, Lcom/mob/tools/c/h;->g:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/mob/tools/c/h;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/c/h;->e:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 129
    iput-object p1, p0, Lcom/mob/tools/c/h;->b:Landroid/location/Location;

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/mob/tools/c/h;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 145
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 137
    return-void
.end method
