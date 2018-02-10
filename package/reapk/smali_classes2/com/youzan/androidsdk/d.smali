.class public final Lcom/youzan/androidsdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youzan/androidsdk/d;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-static {}, Lcom/youzan/androidsdk/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 49
    const-string v0, "YZSDK"

    invoke-static {p0}, Lcom/youzan/androidsdk/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/youzan/androidsdk/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "YZSDK"

    invoke-static {p0}, Lcom/youzan/androidsdk/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/youzan/androidsdk/d;->a:Z

    .line 27
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/youzan/androidsdk/d;->a:Z

    return v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p0, "msgObj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 55
    .local v5, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v7, v5

    if-le v7, v8, :cond_1

    .line 56
    const/4 v1, 0x4

    .line 57
    .local v1, "index":I
    aget-object v7, v5, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "className":Ljava/lang/String;
    aget-object v7, v5, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "methodName":Ljava/lang/String;
    aget-object v7, v5, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 60
    .local v2, "lineNumber":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x18

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    if-nez p0, :cond_0

    const-string v4, "CONTENT IS NONE"

    .line 64
    .local v4, "msg":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "lineNumber":I
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_1
    return-object v7

    .line 63
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "index":I
    .restart local v2    # "lineNumber":I
    .restart local v3    # "methodName":Ljava/lang/String;
    .restart local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 67
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "lineNumber":I
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    const-string v7, "CONTENT IS NONE"

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/youzan/androidsdk/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "YZSDK"

    invoke-static {p0}, Lcom/youzan/androidsdk/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/youzan/androidsdk/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "YZSDK"

    invoke-static {p0}, Lcom/youzan/androidsdk/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method
