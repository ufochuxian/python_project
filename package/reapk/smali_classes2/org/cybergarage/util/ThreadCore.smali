.class public Lorg/cybergarage/util/ThreadCore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile mThreadObject:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    .line 29
    return-void
.end method


# virtual methods
.method public getThreadObject()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/cybergarage/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    return-object v0
.end method

.method public isRunnable()Z
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restart(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->stop()V

    .line 81
    invoke-virtual {p0, p1}, Lorg/cybergarage/util/ThreadCore;->start(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public setThreadObject(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Thread;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/cybergarage/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    .line 40
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v0

    .line 50
    .local v0, "threadObject":Ljava/lang/Thread;
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/Thread;

    .end local v0    # "threadObject":Ljava/lang/Thread;
    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 53
    .restart local v0    # "threadObject":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lorg/cybergarage/util/ThreadCore;->setThreadObject(Ljava/lang/Thread;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v0

    .line 70
    .local v0, "threadObject":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ThreadCore: stop thread..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/cybergarage/util/ThreadCore;->setThreadObject(Ljava/lang/Thread;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 76
    :cond_0
    return-void
.end method
