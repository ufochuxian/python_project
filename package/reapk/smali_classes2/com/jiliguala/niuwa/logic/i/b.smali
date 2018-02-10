.class public Lcom/jiliguala/niuwa/logic/i/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Lcom/jiliguala/niuwa/logic/i/b;


# instance fields
.field a:J

.field b:J

.field c:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/logic/i/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/i/b;->d:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/jiliguala/niuwa/logic/i/b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/i/b;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/i/b;->e:Lcom/jiliguala/niuwa/logic/i/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->h:Z

    .line 37
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/i/b;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/jiliguala/niuwa/logic/i/b;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/i/b;->e:Lcom/jiliguala/niuwa/logic/i/b;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/jiliguala/niuwa/logic/i/b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/i/b;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/i/b;->e:Lcom/jiliguala/niuwa/logic/i/b;

    .line 44
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/i/b;->e:Lcom/jiliguala/niuwa/logic/i/b;

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 12
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "dur"    # J

    .prologue
    .line 105
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "babyId":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    .line 108
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Video_name"

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/i/b;->f:Ljava/lang/String;

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "Source"

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/i/b;->g:Ljava/lang/String;

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Watch"

    long-to-int v3, p2

    invoke-static {v0, v2, v8, v3}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 113
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long/2addr p2, v2

    .line 114
    iput-wide p2, p0, Lcom/jiliguala/niuwa/logic/i/b;->j:J

    .line 119
    const-string v0, "KEY_WATCH_TOTAL_TIME"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v7

    .line 120
    .local v7, "dur_total":I
    const-string v0, "KEY_WATCH_TOTAL_TIME"

    long-to-int v2, p2

    add-int/2addr v2, v7

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    const-wide/16 v2, 0x5

    cmp-long v0, p2, v2

    if-ltz v0, :cond_1

    .line 127
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/a/a;->a()Lcom/jiliguala/niuwa/logic/network/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/i/b;->i:Ljava/lang/String;

    const-string v3, "videos"

    .line 129
    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/jiliguala/niuwa/logic/network/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-static {}, Lcom/jiliguala/niuwa/logic/p/a;->a()Lcom/jiliguala/niuwa/logic/p/a;

    move-result-object v0

    const-string v2, "videos"

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/i/b;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-wide v4, p2

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/p/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    const-wide/32 v10, 0x124f80

    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->c:J

    .line 77
    iput-wide v8, p0, Lcom/jiliguala/niuwa/logic/i/b;->j:J

    .line 79
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 80
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/i/b;->c:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    .line 81
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/logic/i/b;->a(Ljava/lang/String;J)V

    .line 84
    iput-wide v6, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    .line 85
    iput-wide v6, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->h:Z

    if-eqz v0, :cond_1

    .line 91
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 92
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/logic/i/b;->a(Ljava/lang/String;J)V

    .line 94
    iput-wide v6, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    .line 95
    iput-wide v6, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    .line 98
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "rid"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->h:Z

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    .line 51
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/i/b;->f:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/i/b;->g:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/i/b;->i:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 58
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->c:J

    .line 64
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/i/b;->c:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    .line 65
    iput-wide v6, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    goto :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->h:Z

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->c:J

    .line 71
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/i/b;->c:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->a:J

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->b:J

    .line 73
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/i/b;->j:J

    return-wide v0
.end method
