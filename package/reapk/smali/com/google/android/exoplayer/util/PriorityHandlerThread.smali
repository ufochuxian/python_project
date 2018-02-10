.class public final Lcom/google/android/exoplayer/util/PriorityHandlerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    iput p2, p0, Lcom/google/android/exoplayer/util/PriorityHandlerThread;->priority:I

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/exoplayer/util/PriorityHandlerThread;->priority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 42
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 43
    return-void
.end method
