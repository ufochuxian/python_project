.class public final Lorg/cybergarage/util/Debug;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static debug:Lorg/cybergarage/util/Debug;

.field private static enabled:Z


# instance fields
.field private out:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/cybergarage/util/Debug;

    invoke-direct {v0}, Lorg/cybergarage/util/Debug;-><init>()V

    sput-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/cybergarage/util/Debug;->out:Ljava/io/PrintStream;

    .line 35
    return-void
.end method

.method public static getDebug()Lorg/cybergarage/util/Debug;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    return-object v0
.end method

.method public static isOn()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    return v0
.end method

.method public static final message(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iqiyidlna: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public static final message(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "m1"    # Ljava/lang/String;
    .param p1, "m2"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "iqiyidlna: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static final off()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    .line 66
    return-void
.end method

.method public static final on()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    .line 61
    return-void
.end method

.method public static final warning(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 116
    return-void
.end method

.method public static final warning(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-boolean v0, Lorg/cybergarage/util/Debug;->enabled:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iqiyidlna warning : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static final warning(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "m"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iqiyidlna warning : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 104
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iqiyidlna warning : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iqiyidlna warning : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lorg/cybergarage/util/Debug;->debug:Lorg/cybergarage/util/Debug;

    invoke-virtual {v0}, Lorg/cybergarage/util/Debug;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getOut()Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/util/Debug;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOut(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 44
    monitor-enter p0

    if-nez p1, :cond_0

    .line 50
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_0
    iput-object p1, p0, Lorg/cybergarage/util/Debug;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
