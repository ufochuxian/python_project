.class public Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSStatefulObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImplementation"
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x2d4ed58bef601d03L


# instance fields
.field private final _announcing:Ljavax/jmdns/impl/DNSStatefulObject$a;

.field private final _canceling:Ljavax/jmdns/impl/DNSStatefulObject$a;

.field private volatile _dns:Ljavax/jmdns/impl/JmDNSImpl;

.field protected volatile _state:Ljavax/jmdns/impl/constants/DNSState;

.field protected volatile _task:Ljavax/jmdns/impl/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 122
    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    .line 123
    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    .line 124
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    .line 125
    new-instance v0, Ljavax/jmdns/impl/DNSStatefulObject$a;

    const-string v1, "Announce"

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_announcing:Ljavax/jmdns/impl/DNSStatefulObject$a;

    .line 126
    new-instance v0, Ljavax/jmdns/impl/DNSStatefulObject$a;

    const-string v1, "Cancel"

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_canceling:Ljavax/jmdns/impl/DNSStatefulObject$a;

    .line 127
    return-void
.end method

.method private willCancel()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceling()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private willClose()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public advanceState(Ljavax/jmdns/impl/a/a;)Z
    .locals 4
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;

    .prologue
    .line 218
    const/4 v0, 0x1

    .line 219
    .local v0, "result":Z
    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    if-ne v1, p1, :cond_0

    .line 220
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 222
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    if-ne v1, p1, :cond_1

    .line 223
    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->advance()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setState(Ljavax/jmdns/impl/constants/DNSState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 231
    :cond_0
    return v0

    .line 225
    :cond_1
    :try_start_1
    sget-object v1, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to advance state whhen not the owner. owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " perpetrator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v1
.end method

.method public associateWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 146
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    if-ne v0, p2, :cond_1

    .line 147
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 149
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    if-ne v0, p2, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 156
    :cond_1
    return-void

    .line 153
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v0
.end method

.method public cancelState()Z
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "result":Z
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 263
    :try_start_0
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 265
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    const/4 v0, 0x1

    .line 269
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 272
    :cond_1
    return v0

    .line 269
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v1
.end method

.method public closeState()Z
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "result":Z
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 284
    :try_start_0
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willClose()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->CLOSING:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    const/4 v0, 0x1

    .line 290
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 293
    :cond_1
    return v0

    .line 290
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v1
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    return-object v0
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/a/a;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 180
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 182
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    .line 184
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    return v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isProbing()Z

    move-result v0

    return v0
.end method

.method public recoverState()Z
    .locals 2

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "result":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 304
    :try_start_0
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 305
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 309
    return v0

    .line 307
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v1
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/a/a;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;

    .prologue
    .line 163
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    if-ne v0, p1, :cond_1

    .line 164
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 166
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    if-ne v0, p1, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 173
    :cond_1
    return-void

    .line 170
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v0
.end method

.method public revertState()Z
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x1

    .line 240
    .local v0, "result":Z
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 243
    :try_start_0
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->revert()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 245
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 251
    :cond_1
    return v0

    .line 248
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v1
.end method

.method protected setDns(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 138
    iput-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    .line 139
    return-void
.end method

.method protected setState(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .param p1, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 197
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 199
    :try_start_0
    iput-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    .line 200
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_announcing:Ljavax/jmdns/impl/DNSStatefulObject$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSStatefulObject$a;->a()V

    .line 203
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_canceling:Ljavax/jmdns/impl/DNSStatefulObject$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSStatefulObject$a;->a()V

    .line 206
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_announcing:Ljavax/jmdns/impl/DNSStatefulObject$a;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSStatefulObject$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v0
.end method

.method protected setTask(Ljavax/jmdns/impl/a/a;)V
    .locals 0
    .param p1, "task"    # Ljavax/jmdns/impl/a/a;

    .prologue
    .line 189
    iput-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 422
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->d()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    :goto_1
    return-object v1

    .line 422
    :cond_0
    const-string v1, "NO DNS"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "exception":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "NO DNS"

    goto :goto_2
.end method

.method public waitForAnnounced(J)Z
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const-wide/16 v4, 0xa

    .line 381
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_announcing:Ljavax/jmdns/impl/DNSStatefulObject$a;

    add-long v2, p1, v4

    invoke-virtual {v0, v2, v3}, Ljavax/jmdns/impl/DNSStatefulObject$a;->a(J)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_announcing:Ljavax/jmdns/impl/DNSStatefulObject$a;

    invoke-virtual {v0, v4, v5}, Ljavax/jmdns/impl/DNSStatefulObject$a;->a(J)V

    .line 387
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willClose()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    :cond_1
    sget-object v0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for announced cancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 395
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result v0

    return v0

    .line 391
    :cond_3
    sget-object v0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for announced timed out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public waitForCanceled(J)Z
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 403
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_canceling:Ljavax/jmdns/impl/DNSStatefulObject$a;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/DNSStatefulObject$a;->a(J)V

    .line 406
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_canceling:Ljavax/jmdns/impl/DNSStatefulObject$a;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljavax/jmdns/impl/DNSStatefulObject$a;->a(J)V

    .line 409
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willClose()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    sget-object v0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for canceled timed out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 413
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v0

    return v0
.end method
