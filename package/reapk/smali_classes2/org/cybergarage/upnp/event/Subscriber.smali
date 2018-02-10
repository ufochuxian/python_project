.class public Lorg/cybergarage/upnp/event/Subscriber;
.super Lorg/cybergarage/util/ThreadCore;
.source "SourceFile"


# instance fields
.field private SID:Ljava/lang/String;

.field private deliveryHost:Ljava/lang/String;

.field private deliveryPath:Ljava/lang/String;

.field private deliveryPort:I

.field private deliveryURL:Ljava/lang/String;

.field private ifAddr:Ljava/lang/String;

.field private mList:Lorg/cybergarage/upnp/event/SubscriberList;

.field private mService:Lorg/cybergarage/upnp/Service;

.field private mTvguo:Z

.field private mValue:Ljava/lang/String;

.field private notifyCount:J

.field private subscriptionTime:J

.field private timeOut:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lorg/cybergarage/util/ThreadCore;-><init>()V

    .line 44
    iput-object v1, p0, Lorg/cybergarage/upnp/event/Subscriber;->SID:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->ifAddr:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryHost:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryPath:Ljava/lang/String;

    .line 99
    iput v4, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryPort:I

    .line 120
    iput-wide v2, p0, Lorg/cybergarage/upnp/event/Subscriber;->timeOut:J

    .line 152
    iput-wide v2, p0, Lorg/cybergarage/upnp/event/Subscriber;->subscriptionTime:J

    .line 168
    iput-wide v2, p0, Lorg/cybergarage/upnp/event/Subscriber;->notifyCount:J

    .line 199
    iput-boolean v4, p0, Lorg/cybergarage/upnp/event/Subscriber;->mTvguo:Z

    .line 200
    iput-object v1, p0, Lorg/cybergarage/upnp/event/Subscriber;->mService:Lorg/cybergarage/upnp/Service;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->mValue:Ljava/lang/String;

    .line 202
    iput-object v1, p0, Lorg/cybergarage/upnp/event/Subscriber;->mList:Lorg/cybergarage/upnp/event/SubscriberList;

    .line 37
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/Subscriber;->renew()V

    .line 38
    return-void
.end method


# virtual methods
.method public getDeliveryHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryHost:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryPort()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryPort:I

    return v0
.end method

.method public getDeliveryURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->ifAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyCount()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->notifyCount:J

    return-wide v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->SID:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionTime()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->subscriptionTime:J

    return-wide v0
.end method

.method public getTimeOut()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->timeOut:J

    return-wide v0
.end method

.method public incrementNotifyCount()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 182
    iget-wide v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->notifyCount:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 184
    iput-wide v4, p0, Lorg/cybergarage/upnp/event/Subscriber;->notifyCount:J

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-wide v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->notifyCount:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->notifyCount:J

    goto :goto_0
.end method

.method public initThreadParams(Lorg/cybergarage/xml/Node;Z)V
    .locals 1
    .param p1, "serviceNode"    # Lorg/cybergarage/xml/Node;
    .param p2, "tvguo"    # Z

    .prologue
    .line 206
    iput-boolean p2, p0, Lorg/cybergarage/upnp/event/Subscriber;->mTvguo:Z

    .line 207
    new-instance v0, Lorg/cybergarage/upnp/Service;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->mService:Lorg/cybergarage/upnp/Service;

    .line 208
    iget-boolean v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->mTvguo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->mService:Lorg/cybergarage/upnp/Service;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_tvguo()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->mList:Lorg/cybergarage/upnp/event/SubscriberList;

    .line 214
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->mService:Lorg/cybergarage/upnp/Service;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Service;->getSubscriberList_dlna()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    .local v0, "currTime":J
    iget-wide v6, p0, Lorg/cybergarage/upnp/event/Subscriber;->timeOut:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v4

    .line 141
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/Subscriber;->getSubscriptionTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/Subscriber;->getTimeOut()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .line 142
    .local v2, "expiredTime":J
    cmp-long v5, v2, v0

    if-gez v5, :cond_0

    .line 143
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public renew()V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/Subscriber;->setSubscriptionTime(J)V

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/Subscriber;->setNotifyCount(I)V

    .line 198
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    .line 219
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Subscriber] start...["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 221
    const/4 v4, 0x0

    .line 222
    .local v4, "retryCount":I
    new-instance v2, Lorg/cybergarage/upnp/event/NotifyRequest;

    invoke-direct {v2}, Lorg/cybergarage/upnp/event/NotifyRequest;-><init>()V

    .line 224
    .local v2, "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    :goto_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/Subscriber;->isRunnable()Z

    move-result v9

    if-nez v9, :cond_0

    .line 299
    :goto_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/NotifyRequest;->closeHostSocket()V

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Subscriber] Notify thread exit...["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 301
    return-void

    .line 226
    :cond_0
    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->mList:Lorg/cybergarage/upnp/event/SubscriberList;

    monitor-enter v10

    .line 230
    :try_start_0
    const-string v6, ""

    .line 231
    .local v6, "tmpValue":Ljava/lang/String;
    iget-boolean v9, p0, Lorg/cybergarage/upnp/event/Subscriber;->mTvguo:Z

    invoke-static {v9}, Lorg/cybergarage/upnp/Service;->getStateVar(Z)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v8

    .line 232
    .local v8, "var":Lorg/cybergarage/upnp/StateVariable;
    if-eqz v8, :cond_1

    .line 234
    iget-boolean v9, p0, Lorg/cybergarage/upnp/event/Subscriber;->mTvguo:Z

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lorg/cybergarage/upnp/StateVariable;->getValue_tvguo()Ljava/lang/String;

    move-result-object v6

    .line 236
    :cond_1
    :goto_2
    iget-object v9, p0, Lorg/cybergarage/upnp/event/Subscriber;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    if-lt v4, v12, :cond_3

    .line 239
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "[Subscriber] Notify thread sleep...["

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "]"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 240
    iget-object v9, p0, Lorg/cybergarage/upnp/event/Subscriber;->mList:Lorg/cybergarage/upnp/event/SubscriberList;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    .line 241
    const/4 v4, 0x0

    .line 242
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "[Subscriber] Notify thread wake up...["

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "]"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_3
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    iget-object v9, p0, Lorg/cybergarage/upnp/event/Subscriber;->mService:Lorg/cybergarage/upnp/Service;

    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->SID:Ljava/lang/String;

    iget-boolean v11, p0, Lorg/cybergarage/upnp/event/Subscriber;->mTvguo:Z

    invoke-virtual {v9, v10, v11}, Lorg/cybergarage/upnp/Service;->getSubscriber(Ljava/lang/String;Z)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v9

    if-nez v9, :cond_5

    .line 254
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Subscriber] Notify thread expired...["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 234
    :cond_4
    :try_start_2
    invoke-virtual {v8}, Lorg/cybergarage/upnp/StateVariable;->getValue_dlna()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 244
    .end local v6    # "tmpValue":Ljava/lang/String;
    .end local v8    # "var":Lorg/cybergarage/upnp/StateVariable;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "[Subscriber] Notify thread interruptted...["

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "]"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 247
    monitor-exit v10

    goto/16 :goto_1

    .line 226
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 259
    .restart local v6    # "tmpValue":Ljava/lang/String;
    .restart local v8    # "var":Lorg/cybergarage/upnp/StateVariable;
    :cond_5
    iget-boolean v9, p0, Lorg/cybergarage/upnp/event/Subscriber;->mTvguo:Z

    invoke-static {v9}, Lorg/cybergarage/upnp/Service;->getStateVar(Z)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v5

    .line 260
    .local v5, "stateVar":Lorg/cybergarage/upnp/StateVariable;
    if-nez v5, :cond_6

    .line 262
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Subscriber] mad world continue...["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_6
    invoke-virtual {v5}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "name":Ljava/lang/String;
    iget-boolean v9, p0, Lorg/cybergarage/upnp/event/Subscriber;->mTvguo:Z

    if-eqz v9, :cond_7

    invoke-virtual {v5}, Lorg/cybergarage/upnp/StateVariable;->getValue_tvguo()Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "value":Ljava/lang/String;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Subscriber] Notify thread notify ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2, p0, v1, v7}, Lorg/cybergarage/upnp/event/NotifyRequest;->setRequest(Lorg/cybergarage/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    iget-object v9, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryHost:Ljava/lang/String;

    iget v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryPort:I

    const/4 v11, 0x1

    invoke-virtual {v2, v9, v10, v11}, Lorg/cybergarage/upnp/event/NotifyRequest;->post(Ljava/lang/String;IZ)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v9

    invoke-virtual {v9}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v3

    .line 273
    .local v3, "ret":Z
    if-eqz v3, :cond_8

    .line 275
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Subscriber] Notify thread notify success ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 276
    iput-object v7, p0, Lorg/cybergarage/upnp/event/Subscriber;->mValue:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/Subscriber;->incrementNotifyCount()V

    goto/16 :goto_0

    .line 266
    .end local v3    # "ret":Z
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual {v5}, Lorg/cybergarage/upnp/StateVariable;->getValue_dlna()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 280
    .restart local v3    # "ret":Z
    .restart local v7    # "value":Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 281
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Subscriber] Notify thread notify failure ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 282
    const-string v10, "] retryCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 281
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 283
    if-lt v4, v12, :cond_9

    .line 285
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Subscriber] Notify thread notify failure [Give up!!!] ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 286
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] retryCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 285
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 290
    :cond_9
    const-wide/16 v10, 0x7d0

    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 291
    :catch_1
    move-exception v0

    .line 293
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Subscriber] Notify thread interrupted 2...["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setDeliveryURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "deliveryURL"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryURL:Ljava/lang/String;

    .line 88
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryHost:Ljava/lang/String;

    .line 90
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryPath:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    iput v1, p0, Lorg/cybergarage/upnp/event/Subscriber;->deliveryPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/cybergarage/upnp/event/Subscriber;->ifAddr:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setNotifyCount(I)V
    .locals 2
    .param p1, "cnt"    # I

    .prologue
    .line 177
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/cybergarage/upnp/event/Subscriber;->notifyCount:J

    .line 178
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/cybergarage/upnp/event/Subscriber;->SID:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSubscriptionTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 161
    iput-wide p1, p0, Lorg/cybergarage/upnp/event/Subscriber;->subscriptionTime:J

    .line 162
    return-void
.end method

.method public setTimeOut(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 129
    iput-wide p1, p0, Lorg/cybergarage/upnp/event/Subscriber;->timeOut:J

    .line 130
    return-void
.end method
