.class public Lcom/pingplusplus/android/PingppLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEBUG:Z

.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    sput-boolean v1, Lcom/pingplusplus/android/PingppLog;->DEBUG:Z

    .line 14
    const-string v0, "PING++"

    sput-object v0, Lcom/pingplusplus/android/PingppLog;->a:Ljava/lang/String;

    .line 15
    sput-boolean v1, Lcom/pingplusplus/android/PingppLog;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 35
    sget-boolean v0, Lcom/pingplusplus/android/PingppLog;->b:Z

    if-eqz v0, :cond_1

    .line 36
    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    sget-boolean v0, Lcom/pingplusplus/android/PingppLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 40
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/pingplusplus/android/PingppLog;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/pingplusplus/android/PingppLog;->b:Z

    if-eqz v0, :cond_1

    .line 29
    const-string v0, "pingpp_debug"

    .line 30
    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/pingplusplus/android/PingppLog;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 19
    sget-object v0, Lcom/pingplusplus/android/PingppLog;->a:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_1
    return-void
.end method
