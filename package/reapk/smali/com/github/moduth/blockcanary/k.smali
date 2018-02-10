.class Lcom/github/moduth/blockcanary/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/moduth/blockcanary/k$a;
    }
.end annotation


# static fields
.field private static final a:I = 0xbb8


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:Lcom/github/moduth/blockcanary/k$a;

.field private f:Z

.field private final g:Z


# direct methods
.method public constructor <init>(Lcom/github/moduth/blockcanary/k$a;JZ)V
    .locals 4
    .param p1, "blockListener"    # Lcom/github/moduth/blockcanary/k$a;
    .param p2, "blockThresholdMillis"    # J
    .param p4, "stopWhenDebugging"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/github/moduth/blockcanary/k;->b:J

    .line 27
    iput-wide v2, p0, Lcom/github/moduth/blockcanary/k;->c:J

    .line 28
    iput-wide v2, p0, Lcom/github/moduth/blockcanary/k;->d:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/moduth/blockcanary/k;->e:Lcom/github/moduth/blockcanary/k$a;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/moduth/blockcanary/k;->f:Z

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "blockListener should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/github/moduth/blockcanary/k;->e:Lcom/github/moduth/blockcanary/k$a;

    .line 45
    iput-wide p2, p0, Lcom/github/moduth/blockcanary/k;->b:J

    .line 46
    iput-boolean p4, p0, Lcom/github/moduth/blockcanary/k;->g:Z

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/github/moduth/blockcanary/k;)Lcom/github/moduth/blockcanary/k$a;
    .locals 1
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/k;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/github/moduth/blockcanary/k;->e:Lcom/github/moduth/blockcanary/k$a;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->a()Lcom/github/moduth/blockcanary/d;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/d;->b:Lcom/github/moduth/blockcanary/n;

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->a()Lcom/github/moduth/blockcanary/d;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/d;->b:Lcom/github/moduth/blockcanary/n;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/n;->a()V

    .line 90
    :cond_0
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->a()Lcom/github/moduth/blockcanary/d;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/d;->c:Lcom/github/moduth/blockcanary/g;

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->a()Lcom/github/moduth/blockcanary/d;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/d;->c:Lcom/github/moduth/blockcanary/g;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/g;->a()V

    .line 93
    :cond_1
    return-void
.end method

.method private a(J)Z
    .locals 5
    .param p1, "endTime"    # J

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/github/moduth/blockcanary/k;->c:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/github/moduth/blockcanary/k;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->a()Lcom/github/moduth/blockcanary/d;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/d;->b:Lcom/github/moduth/blockcanary/n;

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->a()Lcom/github/moduth/blockcanary/d;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/d;->b:Lcom/github/moduth/blockcanary/n;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/n;->b()V

    .line 100
    :cond_0
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->a()Lcom/github/moduth/blockcanary/d;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/d;->c:Lcom/github/moduth/blockcanary/g;

    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->a()Lcom/github/moduth/blockcanary/d;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/d;->c:Lcom/github/moduth/blockcanary/g;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/g;->b()V

    .line 103
    :cond_1
    return-void
.end method

.method private b(J)V
    .locals 11
    .param p1, "endTime"    # J

    .prologue
    .line 74
    iget-wide v2, p0, Lcom/github/moduth/blockcanary/k;->c:J

    .line 75
    .local v2, "startTime":J
    iget-wide v6, p0, Lcom/github/moduth/blockcanary/k;->d:J

    .line 76
    .local v6, "startThreadTime":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 77
    .local v8, "endThreadTime":J
    invoke-static {}, Lcom/github/moduth/blockcanary/i;->b()Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/github/moduth/blockcanary/k$1;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/github/moduth/blockcanary/k$1;-><init>(Lcom/github/moduth/blockcanary/k;JJJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 4
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-boolean v2, p0, Lcom/github/moduth/blockcanary/k;->g:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-boolean v2, p0, Lcom/github/moduth/blockcanary/k;->f:Z

    if-nez v2, :cond_1

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/moduth/blockcanary/k;->c:J

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/moduth/blockcanary/k;->d:J

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/github/moduth/blockcanary/k;->f:Z

    .line 58
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/k;->a()V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    .local v0, "endTime":J
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/github/moduth/blockcanary/k;->f:Z

    .line 62
    invoke-direct {p0, v0, v1}, Lcom/github/moduth/blockcanary/k;->a(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/github/moduth/blockcanary/k;->b(J)V

    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/k;->b()V

    goto :goto_0
.end method
