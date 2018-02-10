.class Landroid/support/v4/media/session/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private a:Landroid/support/v4/media/session/g$i;

.field private b:Landroid/support/v4/media/session/b;

.field private c:Landroid/support/v4/media/session/c$i;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/g$i;)V
    .locals 1
    .param p1, "token"    # Landroid/support/v4/media/session/g$i;

    .prologue
    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    iput-object p1, p0, Landroid/support/v4/media/session/c$g;->a:Landroid/support/v4/media/session/g$i;

    .line 1156
    invoke-virtual {p1}, Landroid/support/v4/media/session/g$i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/support/v4/media/session/b$a;->a(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    .line 1157
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/c$i;
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Landroid/support/v4/media/session/c$g;->c:Landroid/support/v4/media/session/c$i;

    if-nez v0, :cond_0

    .line 1206
    new-instance v0, Landroid/support/v4/media/session/c$m;

    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/c$m;-><init>(Landroid/support/v4/media/session/b;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c$g;->c:Landroid/support/v4/media/session/c$i;

    .line 1209
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/c$g;->c:Landroid/support/v4/media/session/c$i;

    return-object v0
.end method

.method public a(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 1287
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->e()J

    move-result-wide v2

    .line 1288
    .local v2, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 1289
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    .end local v2    # "flags":J
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v4, "Dead object in removeQueueItemAt."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1292
    .restart local v2    # "flags":J
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/b;->a(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1384
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/b;->b(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    :goto_0
    return-void

    .line 1385
    :catch_0
    move-exception v0

    .line 1386
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/j;)V
    .locals 8
    .param p1, "description"    # Landroid/support/v4/media/j;

    .prologue
    .line 1245
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->e()J

    move-result-wide v2

    .line 1246
    .local v2, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 1247
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    .end local v2    # "flags":J
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v4, "Dead object in addQueueItem."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1250
    .restart local v2    # "flags":J
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/b;->a(Landroid/support/v4/media/j;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/j;I)V
    .locals 8
    .param p1, "description"    # Landroid/support/v4/media/j;
    .param p2, "index"    # I

    .prologue
    .line 1259
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->e()J

    move-result-wide v2

    .line 1260
    .local v2, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 1261
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    .end local v2    # "flags":J
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v4, "Dead object in addQueueItemAt."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1268
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1264
    .restart local v2    # "flags":J
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/b;->a(Landroid/support/v4/media/j;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/c$a;)V
    .locals 3
    .param p1, "callback"    # Landroid/support/v4/media/session/c$a;

    .prologue
    .line 1177
    if-nez p1, :cond_0

    .line 1178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1181
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    .line 1182
    invoke-static {p1}, Landroid/support/v4/media/session/c$a;->a(Landroid/support/v4/media/session/c$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 1181
    invoke-interface {v2, v1}, Landroid/support/v4/media/session/b;->b(Landroid/support/v4/media/session/a;)V

    .line 1183
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1184
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/v4/media/session/c$a;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :goto_0
    return-void

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in unregisterCallback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/c$a;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/support/v4/media/session/c$a;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1161
    if-nez p1, :cond_0

    .line 1162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1165
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1166
    iget-object v2, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-static {p1}, Landroid/support/v4/media/session/c$a;->a(Landroid/support/v4/media/session/c$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    invoke-interface {v2, v1}, Landroid/support/v4/media/session/b;->a(Landroid/support/v4/media/session/a;)V

    .line 1167
    invoke-static {p1, p2}, Landroid/support/v4/media/session/c$a;->a(Landroid/support/v4/media/session/c$a;Landroid/os/Handler;)V

    .line 1168
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/support/v4/media/session/c$a;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_0
    return-void

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in registerCallback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    invoke-virtual {p1}, Landroid/support/v4/media/session/c$a;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1402
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    new-instance v2, Landroid/support/v4/media/session/g$g;

    invoke-direct {v2, p3}, Landroid/support/v4/media/session/g$g;-><init>(Landroid/os/ResultReceiver;)V

    invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/b;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/g$g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    :goto_0
    return-void

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1192
    if-nez p1, :cond_0

    .line 1193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "event may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1196
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/b;->a(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in dispatchMediaButtonEvent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()Landroid/support/v4/media/session/p;
    .locals 3

    .prologue
    .line 1215
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->h()Landroid/support/v4/media/session/p;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1219
    :goto_0
    return-object v1

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1393
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/b;->a(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    :goto_0
    return-void

    .line 1394
    :catch_0
    move-exception v0

    .line 1395
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in adjustVolume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Landroid/support/v4/media/j;)V
    .locals 8
    .param p1, "description"    # Landroid/support/v4/media/j;

    .prologue
    .line 1273
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->e()J

    move-result-wide v2

    .line 1274
    .local v2, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 1275
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    .end local v2    # "flags":J
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v4, "Dead object in removeQueueItem."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1282
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1278
    .restart local v2    # "flags":J
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/b;->b(Landroid/support/v4/media/j;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public c()Landroid/support/v4/media/m;
    .locals 3

    .prologue
    .line 1225
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->g()Landroid/support/v4/media/m;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1229
    :goto_0
    return-object v1

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getMetadata."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/g$f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1235
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->i()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1239
    :goto_0
    return-object v1

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getQueue."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1239
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 1301
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->j()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1305
    :goto_0
    return-object v1

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getQueueTitle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1305
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public f()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1311
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->k()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1315
    :goto_0
    return-object v1

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getExtras."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1315
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 3

    .prologue
    .line 1321
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->l()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1325
    :goto_0
    return v1

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1325
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 3

    .prologue
    .line 1331
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->m()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1335
    :goto_0
    return v1

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRepeatMode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1335
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 3

    .prologue
    .line 1341
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->n()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1345
    :goto_0
    return v1

    .line 1342
    :catch_0
    move-exception v0

    .line 1343
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in isShuffleModeEnabled."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1345
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 4

    .prologue
    .line 1351
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->e()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1355
    :goto_0
    return-wide v2

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1355
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public k()Landroid/support/v4/media/session/c$h;
    .locals 8

    .prologue
    .line 1361
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->f()Landroid/support/v4/media/session/o;

    move-result-object v7

    .line 1362
    .local v7, "info":Landroid/support/v4/media/session/o;
    new-instance v0, Landroid/support/v4/media/session/c$h;

    iget v1, v7, Landroid/support/v4/media/session/o;->a:I

    iget v2, v7, Landroid/support/v4/media/session/o;->b:I

    iget v3, v7, Landroid/support/v4/media/session/o;->c:I

    iget v4, v7, Landroid/support/v4/media/session/o;->d:I

    iget v5, v7, Landroid/support/v4/media/session/o;->e:I

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/c$h;-><init>(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    .end local v7    # "info":Landroid/support/v4/media/session/o;
    :goto_0
    return-object v0

    .line 1365
    :catch_0
    move-exception v6

    .line 1366
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackInfo."

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1368
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 1374
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->d()Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1378
    :goto_0
    return-object v1

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getSessionActivity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1378
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1412
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/c$g;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v1}, Landroid/support/v4/media/session/b;->b()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1416
    :goto_0
    return-object v1

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPackageName."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1416
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1421
    const/4 v0, 0x0

    return-object v0
.end method
