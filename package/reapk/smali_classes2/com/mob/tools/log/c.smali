.class public Lcom/mob/tools/log/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mob/tools/log/c;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mob/tools/log/c;->a:Z

    .line 15
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mob/tools/log/c;->b:Z

    .line 19
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mob/tools/log/c;->b:Z

    .line 23
    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/mob/tools/log/c;->a:Z

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/mob/tools/log/c;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    new-instance v0, Lcom/mob/tools/log/c;

    invoke-direct {v0}, Lcom/mob/tools/log/c;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    sget-boolean v0, Lcom/mob/tools/log/c;->b:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mob/tools/log/d;->wtf(Ljava/lang/Throwable;)I

    .line 36
    :cond_0
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mob/tools/log/d;->crash(Ljava/lang/Throwable;)I

    .line 37
    sget-object v0, Lcom/mob/tools/log/c;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lcom/mob/tools/log/c;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 40
    :cond_1
    return-void
.end method
