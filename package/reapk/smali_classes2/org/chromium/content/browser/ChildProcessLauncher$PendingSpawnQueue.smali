.class Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingSpawnQueue"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mPendingSpawns:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingSpawnsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-class v0, Lorg/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawns:Ljava/util/Queue;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawnsLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/ChildProcessLauncher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/content/browser/ChildProcessLauncher$1;

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public dequeueLocked()Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawnsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawns:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    return-object v0
.end method

.method public enqueueLocked(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V
    .locals 1
    .param p1, "pendingSpawn"    # Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    .prologue
    .line 208
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawnsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawns:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public sizeLocked()I
    .locals 1

    .prologue
    .line 223
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawnsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->mPendingSpawns:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
