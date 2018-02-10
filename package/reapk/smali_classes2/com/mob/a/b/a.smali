.class public Lcom/mob/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/mob/tools/b/c;


# static fields
.field private static a:Lcom/mob/a/b/a;


# instance fields
.field private b:Lcom/mob/tools/c/g;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/Random;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/mob/tools/c/g;

    invoke-direct {v0}, Lcom/mob/tools/c/g;-><init>()V

    iput-object v0, p0, Lcom/mob/a/b/a;->b:Lcom/mob/tools/c/g;

    .line 61
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mob/a/b/a;->d:Ljava/util/Random;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/mob/a/b/a;)Lcom/mob/tools/c/g;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mob/a/b/a;->b:Lcom/mob/tools/c/g;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/mob/a/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/a/b/a;->a:Lcom/mob/a/b/a;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/mob/a/b/a;

    invoke-direct {v0}, Lcom/mob/a/b/a;-><init>()V

    sput-object v0, Lcom/mob/a/b/a;->a:Lcom/mob/a/b/a;

    .line 55
    sget-object v0, Lcom/mob/a/b/a;->a:Lcom/mob/a/b/a;

    invoke-direct {v0}, Lcom/mob/a/b/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit v1

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/location/Location;I)V
    .locals 4

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 322
    const-string v1, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "location_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 328
    const-string v2, "type"

    const-string v3, "LOCATION"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v0, "datetime"

    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {}, Lcom/mob/a/f;->a()Lcom/mob/a/f;

    move-result-object v0

    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/mob/a/f;->a(JLjava/util/HashMap;)V

    .line 333
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/mob/a/b/a$1;

    invoke-direct {v0, p0}, Lcom/mob/a/b/a$1;-><init>(Lcom/mob/a/b/a;)V

    .line 80
    invoke-virtual {v0}, Lcom/mob/tools/b;->start()V

    .line 81
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/b;->b()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/a/b/a;->c:Landroid/os/Handler;

    .line 83
    iget-object v0, p0, Lcom/mob/a/b/a;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    iget-object v0, p0, Lcom/mob/a/b/a;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    iget-object v0, p0, Lcom/mob/a/b/a;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    iget-object v0, p0, Lcom/mob/a/b/a;->c:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    return-void
.end method

.method static synthetic b(Lcom/mob/a/b/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mob/a/b/a;->e()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v1

    .line 156
    const-string v2, "phonename"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v2, "signmd5"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/mob/a/b/a;->b:Lcom/mob/tools/c/g;

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Lcom/mob/tools/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {}, Lcom/mob/a/i;->a()Ljava/lang/String;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 163
    const-string v3, "type"

    const-string v4, "DEVEXT"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "datetime"

    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lcom/mob/a/f;->a()Lcom/mob/a/f;

    move-result-object v0

    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/mob/a/f;->a(JLjava/util/HashMap;)V

    .line 167
    invoke-static {v1}, Lcom/mob/a/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d()Z
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v0, 0x1

    .line 175
    invoke-static {}, Lcom/mob/a/i;->b()J

    move-result-wide v2

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 178
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 179
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 180
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 182
    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v4

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 184
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 185
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 186
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 187
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 189
    if-ne v2, v4, :cond_0

    if-ne v3, v5, :cond_0

    if-eq v1, v6, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 8

    .prologue
    .line 193
    sget-object v1, Lcom/mob/a/b/a;->a:Lcom/mob/a/b/a;

    monitor-enter v1

    .line 195
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v2

    .line 197
    const-string v3, "ssid"

    invoke-virtual {v2}, Lcom/mob/tools/c/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v3, "bssid"

    invoke-virtual {v2}, Lcom/mob/tools/c/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 201
    const-string v3, "type"

    const-string v4, "WIFI_INFO"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v4

    .line 204
    const-string v3, "datetime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {}, Lcom/mob/a/f;->a()Lcom/mob/a/f;

    move-result-object v3

    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v2}, Lcom/mob/a/f;->a(JLjava/util/HashMap;)V

    .line 207
    invoke-static {v4, v5}, Lcom/mob/a/i;->a(J)V

    .line 208
    iget-object v2, p0, Lcom/mob/a/b/a;->b:Lcom/mob/tools/c/g;

    invoke-virtual {v2, v0}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/mob/tools/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/mob/a/i;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 215
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mob/a/b/a;->e:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/mob/a/b/a$2;

    invoke-direct {v0, p0}, Lcom/mob/a/b/a$2;-><init>(Lcom/mob/a/b/a;)V

    iput-object v0, p0, Lcom/mob/a/b/a;->e:Landroid/content/BroadcastReceiver;

    .line 252
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/a/b/a;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mob/a/b/a;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/a/b/a;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/a/b/a;->e:Landroid/content/BroadcastReceiver;

    .line 266
    :cond_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private h()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 269
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v2

    .line 272
    :try_start_0
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 274
    :goto_0
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->U()I

    move-result v3

    .line 275
    invoke-virtual {v2}, Lcom/mob/tools/c/e;->T()I

    move-result v4

    .line 276
    if-eq v0, v1, :cond_0

    if-eq v3, v1, :cond_0

    if-eq v4, v1, :cond_0

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 278
    const-string v5, "carrier"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "simopname"

    invoke-virtual {v2}, Lcom/mob/tools/c/e;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v0, "lac"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v0, "cell"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 284
    const-string v2, "type"

    const-string v3, "BSINFO"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v2, "datetime"

    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {}, Lcom/mob/a/f;->a()Lcom/mob/a/f;

    move-result-object v2

    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0}, Lcom/mob/a/f;->a(JLjava/util/HashMap;)V

    .line 289
    iget-object v0, p0, Lcom/mob/a/b/a;->b:Lcom/mob/tools/c/g;

    invoke-virtual {v0, v1}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/mob/tools/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/a/i;->c(Ljava/lang/String;)V

    .line 293
    :cond_0
    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/mob/a/e;->k()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 294
    invoke-static {v0, v1}, Lcom/mob/a/i;->b(J)V

    .line 295
    return-void

    .line 273
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private i()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 298
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v3

    .line 301
    :try_start_0
    invoke-virtual {v3}, Lcom/mob/tools/c/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 303
    :goto_0
    invoke-virtual {v3}, Lcom/mob/tools/c/e;->U()I

    move-result v4

    .line 304
    invoke-virtual {v3}, Lcom/mob/tools/c/e;->T()I

    move-result v5

    .line 305
    if-eq v0, v1, :cond_2

    if-eq v4, v1, :cond_2

    if-eq v5, v1, :cond_2

    .line 306
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 307
    const-string v6, "carrier"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "simopname"

    invoke-virtual {v3}, Lcom/mob/tools/c/e;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v0, "lac"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "cell"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/mob/a/b/a;->b:Lcom/mob/tools/c/g;

    invoke-virtual {v0, v1}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Lcom/mob/tools/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {}, Lcom/mob/a/i;->d()Ljava/lang/String;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 316
    :goto_1
    return v0

    .line 302
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 314
    goto :goto_1

    :cond_2
    move v0, v2

    .line 316
    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .prologue
    const/16 v8, 0x78

    const/4 v7, 0x4

    const/4 v1, 0x2

    const/4 v6, 0x0

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return v6

    .line 92
    :pswitch_0
    invoke-static {}, Lcom/mob/a/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/mob/a/b/a;->c()V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-static {}, Lcom/mob/a/e;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/mob/a/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/mob/a/b/a;->e()V

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/mob/a/b/a;->f()V

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/mob/a/b/a;->c:Landroid/os/Handler;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/mob/a/b/a;->g()V

    goto :goto_1

    .line 108
    :pswitch_2
    invoke-static {}, Lcom/mob/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/mob/a/b/a;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_2
    iget-object v0, p0, Lcom/mob/a/b/a;->d:Ljava/util/Random;

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xb4

    .line 116
    iget-object v1, p0, Lcom/mob/a/b/a;->c:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 120
    :pswitch_3
    invoke-static {}, Lcom/mob/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/mob/a/e;->k()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 122
    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v2

    .line 124
    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    :try_start_1
    invoke-direct {p0}, Lcom/mob/a/b/a;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    :cond_3
    invoke-direct {p0}, Lcom/mob/a/b/a;->h()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/mob/a/b/a;->d:Ljava/util/Random;

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xb4

    .line 133
    iget-object v1, p0, Lcom/mob/a/b/a;->c:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 137
    :pswitch_4
    invoke-static {}, Lcom/mob/a/e;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    :try_start_2
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    .line 140
    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/c/e;->a(IIZ)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/mob/a/b/a;->a(Landroid/location/Location;I)V

    .line 141
    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/c/e;->a(IIZ)Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mob/a/b/a;->a(Landroid/location/Location;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/mob/a/b/a;->c:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {}, Lcom/mob/a/e;->m()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 142
    :catch_2
    move-exception v0

    .line 143
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_4

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
