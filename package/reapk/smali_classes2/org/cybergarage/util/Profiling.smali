.class public Lorg/cybergarage/util/Profiling;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cybergarage/util/Profiling;->DEBUG:Z

    .line 10
    const-string v0, "qiyi_profiling"

    sput-object v0, Lorg/cybergarage/util/Profiling;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cybergarage/util/Profiling;->mTime:J

    .line 5
    return-void
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lorg/cybergarage/util/Profiling;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-boolean v2, Lorg/cybergarage/util/Profiling;->DEBUG:Z

    if-nez v2, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/cybergarage/util/Profiling;->mTime:J

    sub-long v0, v2, v4

    .line 35
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Profiling;->i(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 21
    sget-boolean v0, Lorg/cybergarage/util/Profiling;->DEBUG:Z

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cybergarage/util/Profiling;->mTime:J

    goto :goto_0
.end method
