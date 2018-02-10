.class public final Lrx/exceptions/AssemblyStackTraceException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation build Lrx/b/b;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1c4b7c27e9c0effcL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static find(Ljava/lang/Throwable;)Lrx/exceptions/AssemblyStackTraceException;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 85
    .local v0, "memory":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_0
    instance-of v2, p0, Lrx/exceptions/AssemblyStackTraceException;

    if-eqz v2, :cond_1

    .line 86
    check-cast p0, Lrx/exceptions/AssemblyStackTraceException;

    .line 93
    .end local p0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object p0

    .line 88
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move-object p0, v1

    .line 89
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 92
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p0, v1

    .line 93
    goto :goto_0
.end method


# virtual methods
.method public attachTo(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v1, "memory":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 56
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Received an exception with a cause set to null, instead of being unset. To fix this, look down the chain of causes. The last exception had a cause explicitly set to null. It should be unset instead."

    invoke-direct {v2, v3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 68
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-static {p0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .prologue
    .line 43
    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method
