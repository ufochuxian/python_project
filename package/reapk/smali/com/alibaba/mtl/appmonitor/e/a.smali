.class public Lcom/alibaba/mtl/appmonitor/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alibaba/mtl/appmonitor/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/mtl/appmonitor/e/a;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/alibaba/mtl/appmonitor/e/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/e/a;->b:Lcom/alibaba/mtl/appmonitor/e/a;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alibaba/mtl/appmonitor/e/a;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/e/a;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/e/a;->b:Lcom/alibaba/mtl/appmonitor/e/a;

    .line 23
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/e/a;->b:Lcom/alibaba/mtl/appmonitor/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    if-nez p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/alibaba/mtl/appmonitor/e/a;->a:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[sendToUT]:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, " args:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    sget-boolean v0, Lcom/alibaba/mtl/log/a;->h:Z

    if-eqz v0, :cond_2

    .line 33
    if-eqz p1, :cond_0

    .line 34
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ARG1:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ARG2:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ARG3:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->PAGE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->EVENTID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, p1

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/alibaba/mtl/log/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 42
    :cond_2
    const-string v0, "_fuamf"

    const-string v1, "yes"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Lcom/alibaba/mtl/log/e/s;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
