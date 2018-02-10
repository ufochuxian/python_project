.class public Lcom/mob/tools/c/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/c/o$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ICDilI/ilJPjgIDjgIDjgIDilI/ilJMK4pSP4pSb4pS74pSB4pSB4pSB4pSb4pS74pSTCuKUg+OAgOOAgOOAgOOAgOOAgOOAgOOAgOKUgwrilIPjgIDjgIDjgIDilIHjgIDjgIDjgIDilIMK4pSD44CA4pSz4pSb44CA4pSX4pSz44CA4pSDCuKUg+OAgOOAgOOAgOOAgOOAgOOAgOOAgOKUgwrilIPjgIDjgIDjgIDilLvjgIDjgIDjgIDilIMK4pSD44CA44CA44CA44CA44CA44CA44CA4pSDCuKUl+KUgeKUk+OAgOOAgOOAgOKUj+KUgeKUmwogICAg4pSD44CA44CA44CA4pSDICAgQ29kZSBpcyBmYXIgYXdheSBmcm9tIGJ1ZyB3aXRoIHRoZSBhbmltYWwgcHJvdGVjdGluZwogICAg4pSD44CA44CA44CA4pSDICAg56We5YW95L+d5L2R77yM5Luj56CB5pegQlVHCiAgICDilIPjgIDjgIDjgIDilJfilIHilIHilIHilJMKICAgIOKUg+OAgOOAgOOAgOOAgOOAgOOAgOOAgOKUo+KUkwogICAg4pSD44CA44CA44CA44CA44CA44CA44CA4pSP4pSbCiAgICDilJfilJPilJPilI/ilIHilLPilJPilI/ilJsKICAgICAg4pSD4pSr4pSr44CA4pSD4pSr4pSrCiAgICAgIOKUl+KUu+KUm+OAgOKUl+KUu+KUmwo="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "44CA4pSP4pST44CA44CA44CA4pSP4pSTCuKUj+KUm+KUu+KUgeKUgeKUgeKUm+KUu+KUkwrilIPjgIDjgIDjgIDjgIDjgIDjgIDjgIDilIMK4pSD44CA44CA44CA4pSB44CA44CA44CA4pSDCuKUg+OAgO+8nuOAgOOAgOOAgO+8nOOAgOKUgwrilIPjgIDjgIDjgIDjgIDjgIDjgIDjgIDilIMK4pSDLi4u44CA4oyS44CALi4u44CA4pSDCuKUg+OAgOOAgOOAgOOAgOOAgOOAgOOAgOKUgwrilJfilIHilJPjgIDjgIDjgIDilI/ilIHilJsK44CA44CA4pSD44CA44CA44CA4pSDICAgIENvZGUgaXMgZmFyIGF3YXkgZnJvbSBidWcgd2l0aCB0aGUgYW5pbWFsIHByb3RlY3RpbmcK44CA44CA4pSD44CA44CA44CA4pSDICAgIOelnuWFveS/neS9kSzku6PnoIHml6BidWcK44CA44CA4pSD44CA44CA44CA4pSDCuOAgOOAgOKUg+OAgOOAgOOAgOKUgwrjgIDjgIDilIPjgIDjgIDjgIDilIMK44CA44CA4pSD44CA44CA44CA4pSDCuOAgOOAgOKUg+OAgOOAgOOAgOKUl+KUgeKUgeKUgeKUkwrjgIDjgIDilIPjgIDjgIDjgIDjgIDjgIDjgIDjgIDilKPilJMK44CA44CA4pSD44CA44CA44CA44CA44CA44CA44CA4pSP4pSbCuOAgOOAgOKUl+KUk+KUk+KUj+KUgeKUs+KUk+KUj+KUmwrjgIDjgIDjgIDilIPilKvilKvjgIDilIPilKvilKsK44CA44CA44CA4pSX4pS74pSb44CA4pSX4pS74pSbCg=="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "44CA44CA4pSP4pST44CA44CA44CA4pSP4pSTKyArCuOAgOKUj+KUm+KUu+KUgeKUgeKUgeKUm+KUu+KUkyArICsK44CA4pSD44CA44CA44CA44CA44CA44CA44CA4pSDCuOAgOKUg+OAgOOAgOOAgOKUgeOAgOOAgOOAgOKUgyArKyArICsgKwrjgIDilIPjgIAg4paI4paI4paI4paI4pSB4paI4paI4paI4paIIOKUgysK44CA4pSD44CA44CA44CA44CA44CA44CA44CA4pSDICsK44CA4pSD44CA44CA44CA4pS744CA44CA44CA4pSDCuOAgOKUg+OAgOOAgOOAgOOAgOOAgOOAgOOAgOKUgyArICsgCuOAgOKUl+KUgeKUk+OAgOOAgOOAgOKUj+KUgeKUmwrjgIDjgIDjgIDilIPjgIDjgIDjgIDilIMK44CA44CA44CA4pSD44CA44CA44CA4pSDICsgKyArICsgCuOAgOOAgOOAgOKUg+OAgOOAgOOAgOKUgyAgICAgICAgICAgICAgICAgQ29kZSBpcyBmYXIgYXdheSBmcm9tIGJ1ZyB3aXRoIHRoZSBhbmltYWwgcHJvdGVjdGluZwrjgIDjgIDjgIDilIPjgIDjgIDjgIDilIMgKyAgICAg56We5YW95L+d5L2RLOS7o+eggeaXoGJ1ZwrjgIDjgIDjgIDilIPjgIDjgIDjgIDilIMK44CA44CA44CA4pSD44CA44CA44CA4pSD44CA44CAKwrjgIDjgIDjgIDilIPjgIAg44CA44CA4pSX4pSB4pSB4pSB4pSTICsgKwrjgIDjgIDjgIDilIMg44CA44CA44CA44CA44CA44CA44CA4pSj4pSTIArjgIDjgIDjgIDilIMg44CA44CA44CA44CA44CA44CA44CA4pSP4pSbIArjgIDjgIDjgIDilJfilJPilJPilI/ilIHilLPilJPilI/ilJsgKyArICsgKwrjgIDjgIDjgIDjgIDilIPilKvilKvjgIDilIPilKvilKsK44CA44CA44CA44CA4pSX4pS74pSb44CA4pSX4pS74pSbKyArICsgKwo="

    aput-object v2, v0, v1

    sput-object v0, Lcom/mob/tools/c/o;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/mob/tools/c/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/tools/c/o;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/mob/tools/c/o;->b()V

    .line 57
    invoke-static {}, Lcom/mob/tools/c/o;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Message;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/mob/tools/c/o;->b(Landroid/os/Message;)V

    return-void
.end method

.method public static a(IJLandroid/os/Handler$Callback;)Z
    .locals 3
    .param p0, "what"    # I
    .param p1, "uptimeMillis"    # J
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 128
    invoke-static {}, Lcom/mob/tools/c/o;->a()V

    .line 129
    sget-object v0, Lcom/mob/tools/c/o;->b:Landroid/os/Handler;

    invoke-static {p0, p3}, Lcom/mob/tools/c/o;->b(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public static a(ILandroid/os/Handler$Callback;)Z
    .locals 2
    .param p0, "what"    # I
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 123
    invoke-static {}, Lcom/mob/tools/c/o;->a()V

    .line 124
    sget-object v0, Lcom/mob/tools/c/o;->b:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/mob/tools/c/o;->b(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "delayMillis"    # J
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 108
    invoke-static {}, Lcom/mob/tools/c/o;->a()V

    .line 109
    sget-object v0, Lcom/mob/tools/c/o;->b:Landroid/os/Handler;

    invoke-static {p0, p3}, Lcom/mob/tools/c/o;->c(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 103
    invoke-static {}, Lcom/mob/tools/c/o;->a()V

    .line 104
    sget-object v0, Lcom/mob/tools/c/o;->b:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/mob/tools/c/o;->c(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private static b(ILandroid/os/Handler$Callback;)Landroid/os/Message;
    .locals 2
    .param p0, "what"    # I
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 97
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    .local v0, "msg":Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 99
    invoke-static {v0, p1}, Lcom/mob/tools/c/o;->c(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method private static b()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/mob/tools/c/o$1;

    invoke-direct {v2}, Lcom/mob/tools/c/o$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/mob/tools/c/o;->b:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private static b(Landroid/os/Message;)V
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mob/tools/c/o$a;

    .line 83
    .local v2, "io":Lcom/mob/tools/c/o$a;
    iget-object v1, v2, Lcom/mob/tools/c/o$a;->a:Landroid/os/Message;

    .line 84
    .local v1, "inner":Landroid/os/Message;
    iget-object v0, v2, Lcom/mob/tools/c/o$a;->b:Landroid/os/Handler$Callback;

    .line 85
    .local v0, "callback":Landroid/os/Handler$Callback;
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public static b(IJLandroid/os/Handler$Callback;)Z
    .locals 3
    .param p0, "what"    # I
    .param p1, "delayMillis"    # J
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 133
    invoke-static {}, Lcom/mob/tools/c/o;->a()V

    .line 134
    sget-object v0, Lcom/mob/tools/c/o;->b:Landroid/os/Handler;

    invoke-static {p0, p3}, Lcom/mob/tools/c/o;->b(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "uptimeMillis"    # J
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 113
    invoke-static {}, Lcom/mob/tools/c/o;->a()V

    .line 114
    sget-object v0, Lcom/mob/tools/c/o;->b:Landroid/os/Handler;

    invoke-static {p0, p3}, Lcom/mob/tools/c/o;->c(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/os/Message;Landroid/os/Handler$Callback;)Z
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 118
    invoke-static {}, Lcom/mob/tools/c/o;->a()V

    .line 119
    sget-object v0, Lcom/mob/tools/c/o;->b:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/mob/tools/c/o;->c(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 91
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 92
    .local v0, "shell":Landroid/os/Message;
    new-instance v1, Lcom/mob/tools/c/o$a;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/c/o$a;-><init>(Landroid/os/Message;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    return-object v0
.end method

.method private static c()V
    .locals 8

    .prologue
    .line 72
    :try_start_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 73
    .local v2, "rnd":Ljava/util/Random;
    sget-object v4, Lcom/mob/tools/c/o;->a:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x3

    aget-object v1, v4, v5

    .line 74
    .local v1, "pray":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 75
    .local v0, "base64":[B
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "base64":[B
    .end local v1    # "pray":Ljava/lang/String;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
