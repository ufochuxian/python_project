.class public final Lcom/jiliguala/niuwa/logic/downloader/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "AigeStudio"

.field public static final b:Ljava/lang/String; = "%s->%s->%d"

.field public static final c:Ljava/lang/String; = ":<--->:"

.field public static final d:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v0, v1, v2

    .line 18
    .local v0, "stack":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%s->%s->%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":<--->:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 25
    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 31
    return-void
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 37
    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 43
    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 49
    return-void
.end method
