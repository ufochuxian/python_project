.class public Lcom/jiliguala/niuwa/logic/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[I

.field private static final c:Ljava/lang/String;

.field private static d:Lcom/jiliguala/niuwa/logic/q/a;


# instance fields
.field private e:I

.field private f:I

.field private g:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 18
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "5\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "10\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "15\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "20\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "30\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "40\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "50\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "60\u5206\u949f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/a;->a:[Ljava/lang/String;

    .line 19
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/a;->b:[I

    .line 21
    const-class v0, Lcom/jiliguala/niuwa/logic/q/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/a;->c:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/jiliguala/niuwa/logic/q/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/q/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/a;->d:Lcom/jiliguala/niuwa/logic/q/a;

    return-void

    .line 19
    nop

    :array_0
    .array-data 4
        0x5
        0xa
        0xf
        0x14
        0x1e
        0x28
        0x32
        0x3c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/q/a;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/jiliguala/niuwa/logic/q/a;->d:Lcom/jiliguala/niuwa/logic/q/a;

    return-object v0
.end method

.method private j()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/a;->e()I

    .line 235
    const-string v1, "PREFS_KEY_AUDIO_CUR_TIME_RECORD"

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/logic/q/a;->f:I

    .line 236
    const-string v1, "PREFS_KEY_AUDIO_CTRL_TIME_ON_TIMESTAMP"

    invoke-static {v1, v4, v5}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    .line 237
    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/q/a;->g:Z

    .line 238
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "timeValue"    # I

    .prologue
    .line 127
    sget-object v1, Lcom/jiliguala/niuwa/logic/q/a;->c:Ljava/lang/String;

    monitor-enter v1

    .line 128
    :try_start_0
    iput p1, p0, Lcom/jiliguala/niuwa/logic/q/a;->e:I

    .line 129
    const-string v0, "PREFS_KEY_AUDIO_CTRL_TIME"

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;I)V

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 6
    .param p1, "isOn"    # Z

    .prologue
    .line 193
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/a;->c:Ljava/lang/String;

    monitor-enter v2

    .line 194
    :try_start_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/logic/q/a;->g:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 198
    const/4 v1, 0x0

    iput v1, p0, Lcom/jiliguala/niuwa/logic/q/a;->f:I

    .line 199
    const-string v1, "PREFS_KEY_AUDIO_CUR_TIME_RECORD"

    iget v3, p0, Lcom/jiliguala/niuwa/logic/q/a;->f:I

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 201
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_4

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    .line 204
    const-string v1, "Value"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/a;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :goto_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/logic/q/a;->g:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/logic/q/a;->g:Z

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 213
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v3, "Listen Time Control"

    invoke-virtual {v1, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 215
    :cond_3
    const-string v1, "PREFS_KEY_AUDIO_CTRL_TIME_ON_TIMESTAMP"

    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    invoke-static {v1, v4, v5}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;J)V

    .line 216
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/q/a;->g:Z

    .line 217
    monitor-exit v2

    .line 218
    return-void

    .line 209
    :cond_4
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    .line 210
    const-string v1, "Value"

    const-string v3, "unlimited"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 217
    .end local v0    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 54
    sget-object v1, Lcom/jiliguala/niuwa/logic/q/a;->c:Ljava/lang/String;

    monitor-enter v1

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/q/a;->j()V

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/a;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    .local v0, "currentTimestamp":J
    iget v2, p0, Lcom/jiliguala/niuwa/logic/q/a;->f:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/jiliguala/niuwa/logic/q/a;->f:I

    .line 93
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    .line 94
    const-string v2, "PREFS_KEY_AUDIO_CTRL_TIME_ON_TIMESTAMP"

    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    invoke-static {v2, v4, v5}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;J)V

    .line 95
    const-string v2, "PREFS_KEY_AUDIO_CUR_TIME_RECORD"

    iget v3, p0, Lcom/jiliguala/niuwa/logic/q/a;->f:I

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 97
    .end local v0    # "currentTimestamp":J
    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/q/a;->j()V

    .line 104
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    .line 107
    const-string v0, "PREFS_KEY_AUDIO_CTRL_TIME_ON_TIMESTAMP"

    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    invoke-static {v0, v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;J)V

    .line 110
    :cond_0
    return-void
.end method

.method public e()I
    .locals 3

    .prologue
    .line 117
    const-string v0, "PREFS_KEY_AUDIO_CTRL_TIME"

    sget-object v1, Lcom/jiliguala/niuwa/logic/q/a;->b:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/q/a;->e:I

    .line 119
    iget v0, p0, Lcom/jiliguala/niuwa/logic/q/a;->e:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/a;->e()I

    move-result v1

    .line 140
    .local v1, "lstValue":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/a;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 141
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/a;->b:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 142
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/a;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 145
    :goto_1
    return-object v2

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/a;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_1
.end method

.method public g()I
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/q/a;->j()V

    .line 155
    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/a;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 164
    iget v2, p0, Lcom/jiliguala/niuwa/logic/q/a;->e:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lcom/jiliguala/niuwa/logic/q/a;->f:I

    sub-int v0, v2, v3

    .line 165
    .local v0, "remains":I
    if-lez v0, :cond_0

    div-int/lit16 v1, v0, 0x3e8

    goto :goto_0

    .line 171
    .end local v0    # "remains":I
    :cond_2
    iget v2, p0, Lcom/jiliguala/niuwa/logic/q/a;->e:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget v4, p0, Lcom/jiliguala/niuwa/logic/q/a;->f:I

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 172
    .restart local v0    # "remains":I
    if-lez v0, :cond_0

    div-int/lit16 v1, v0, 0x3e8

    goto :goto_0
.end method

.method public h()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 182
    const-string v0, "PREFS_KEY_AUDIO_CTRL_TIME_ON_TIMESTAMP"

    invoke-static {v0, v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    .line 183
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/q/a;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/q/a;->g:Z

    .line 184
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/q/a;->g:Z

    return v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 226
    sget-object v1, Lcom/jiliguala/niuwa/logic/q/a;->c:Ljava/lang/String;

    monitor-enter v1

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/a;->g()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
