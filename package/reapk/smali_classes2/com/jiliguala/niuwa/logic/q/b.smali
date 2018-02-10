.class public Lcom/jiliguala/niuwa/logic/q/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[I

.field public static final c:[Ljava/lang/String;

.field public static final d:[I

.field private static final e:[I

.field private static final f:Ljava/lang/String;

.field private static g:Lcom/jiliguala/niuwa/logic/q/b;


# instance fields
.field private h:J

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x4

    .line 14
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "5\u5206\u949f"

    aput-object v1, v0, v5

    const-string v1, "10\u5206\u949f"

    aput-object v1, v0, v6

    const-string v1, "15\u5206\u949f"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "20\u5206\u949f"

    aput-object v2, v0, v1

    const-string v1, "30\u5206\u949f"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "40\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "50\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "60\u5206\u949f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/b;->a:[Ljava/lang/String;

    .line 15
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/b;->b:[I

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u672a\u8bbe\u7f6e"

    aput-object v1, v0, v5

    const-string v1, "5\u5206\u949f"

    aput-object v1, v0, v6

    const-string v1, "10\u5206\u949f"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "15\u5206\u949f"

    aput-object v2, v0, v1

    const-string v1, "20\u5206\u949f"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "30\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "40\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "50\u5206\u949f"

    aput-object v2, v0, v1

    const-string v1, "60\u5206\u949f"

    aput-object v1, v0, v4

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/b;->c:[Ljava/lang/String;

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/b;->d:[I

    .line 23
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/b;->e:[I

    .line 25
    const-class v0, Lcom/jiliguala/niuwa/logic/q/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/b;->f:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/jiliguala/niuwa/logic/q/b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/q/b;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/q/b;->g:Lcom/jiliguala/niuwa/logic/q/b;

    return-void

    .line 15
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

    .line 18
    :array_1
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x1e
        0x28
        0x32
        0x3c
    .end array-data

    .line 23
    :array_2
    .array-data 4
        0x19
        0x23
        0x2d
        0x37
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/q/b;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/jiliguala/niuwa/logic/q/b;->g:Lcom/jiliguala/niuwa/logic/q/b;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/b;->g()I

    .line 198
    const-string v0, "PREFS_KEY_VIDEO_CUR_TIME_RECORD"

    invoke-static {v0, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/q/b;->j:I

    .line 199
    const-string v0, "PREFS_KEY_VIDEO_RECORD_LST_TS"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/logic/q/b;->h:J

    .line 200
    const-string v0, "PREFS_KEY_IS_VIDEO_CTRL_TIME_ON"

    invoke-static {v0, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/q/b;->k:Z

    .line 201
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 10
    .param p1, "totalToAdd"    # I

    .prologue
    .line 62
    sget-object v6, Lcom/jiliguala/niuwa/logic/q/b;->f:Ljava/lang/String;

    monitor-enter v6

    .line 64
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 65
    .local v2, "current_millis":J
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, "sf":Ljava/text/SimpleDateFormat;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "curTsStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/q/b;->k()V

    .line 70
    iget-wide v8, p0, Lcom/jiliguala/niuwa/logic/q/b;->h:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "lastTsStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    iget v5, p0, Lcom/jiliguala/niuwa/logic/q/b;->j:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/jiliguala/niuwa/logic/q/b;->j:I

    .line 74
    const-string v5, "PREFS_KEY_VIDEO_CUR_TIME_RECORD"

    iget v7, p0, Lcom/jiliguala/niuwa/logic/q/b;->j:I

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;I)V

    .line 83
    :goto_0
    iput-wide v2, p0, Lcom/jiliguala/niuwa/logic/q/b;->h:J

    .line 84
    const-string v5, "PREFS_KEY_VIDEO_RECORD_LST_TS"

    invoke-static {v5, v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;J)V

    .line 86
    monitor-exit v6

    .line 87
    return-void

    .line 78
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/logic/q/b;->j:I

    .line 79
    const-string v5, "PREFS_KEY_VIDEO_CUR_TIME_RECORD"

    iget v7, p0, Lcom/jiliguala/niuwa/logic/q/b;->j:I

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 86
    .end local v0    # "curTsStr":Ljava/lang/String;
    .end local v1    # "lastTsStr":Ljava/lang/String;
    .end local v2    # "current_millis":J
    .end local v4    # "sf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public a(J)V
    .locals 1
    .param p1, "totalToAdd"    # J

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/q/b;->a(I)V

    .line 59
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3
    .param p1, "isOn"    # Z

    .prologue
    .line 130
    sget-object v1, Lcom/jiliguala/niuwa/logic/q/b;->f:Ljava/lang/String;

    monitor-enter v1

    .line 131
    :try_start_0
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/q/b;->k:Z

    .line 132
    const-string v0, "PREFS_KEY_IS_VIDEO_CTRL_TIME_ON"

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/logic/q/b;->k:Z

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 41
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->f:Ljava/lang/String;

    monitor-enter v2

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/b;->g()I

    move-result v0

    .line 47
    .local v0, "lastCtrlTime":I
    sget-object v1, Lcom/jiliguala/niuwa/logic/q/b;->e:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 48
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/logic/q/b;->b(I)V

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/q/b;->k()V

    .line 51
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/b;->d()V

    .line 52
    monitor-exit v2

    .line 53
    return-void

    .line 52
    .end local v0    # "lastCtrlTime":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(I)V
    .locals 2
    .param p1, "timeValue"    # I

    .prologue
    .line 112
    sget-object v1, Lcom/jiliguala/niuwa/logic/q/b;->f:Ljava/lang/String;

    monitor-enter v1

    .line 119
    :try_start_0
    iput p1, p0, Lcom/jiliguala/niuwa/logic/q/b;->i:I

    .line 120
    const-string v0, "PREFS_KEY_VIDEO_CTRL_TIME"

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;I)V

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isPractise"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/q/b;->l:Z

    .line 205
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 91
    sget-object v3, Lcom/jiliguala/niuwa/logic/q/b;->f:Ljava/lang/String;

    monitor-enter v3

    .line 92
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    .local v0, "current_millis":J
    const-string v2, "PREFS_KEY_VIDEO_RECORD_LST_TS"

    invoke-static {v2, v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;J)V

    .line 94
    monitor-exit v3

    .line 95
    return-void

    .line 94
    .end local v0    # "current_millis":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public d()V
    .locals 8

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 99
    .local v2, "current_millis":J
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, "sf":Ljava/text/SimpleDateFormat;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "curTsStr":Ljava/lang/String;
    iget-wide v6, p0, Lcom/jiliguala/niuwa/logic/q/b;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "lastTsStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    const/4 v5, 0x0

    iput v5, p0, Lcom/jiliguala/niuwa/logic/q/b;->j:I

    .line 106
    const-string v5, "PREFS_KEY_VIDEO_CUR_TIME_RECORD"

    iget v6, p0, Lcom/jiliguala/niuwa/logic/q/b;->j:I

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;I)V

    .line 109
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 125
    const-string v0, "PREFS_KEY_IS_VIDEO_CTRL_TIME_ON"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/q/b;->k:Z

    .line 126
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/q/b;->k:Z

    return v0
.end method

.method public f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 137
    sget-object v1, Lcom/jiliguala/niuwa/logic/q/b;->f:Ljava/lang/String;

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/q/b;->k()V

    .line 140
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/logic/q/b;->k:Z

    if-nez v2, :cond_0

    .line 141
    monitor-exit v1

    .line 151
    :goto_0
    return v0

    .line 143
    :cond_0
    iget v2, p0, Lcom/jiliguala/niuwa/logic/q/b;->i:I

    if-gtz v2, :cond_1

    .line 144
    monitor-exit v1

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 148
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/jiliguala/niuwa/logic/q/b;->j:I

    iget v3, p0, Lcom/jiliguala/niuwa/logic/q/b;->i:I

    mul-int/lit8 v3, v3, 0x3c

    if-ge v2, v3, :cond_2

    .line 149
    monitor-exit v1

    goto :goto_0

    .line 151
    :cond_2
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public g()I
    .locals 3

    .prologue
    .line 159
    const-string v0, "PREFS_KEY_VIDEO_CTRL_TIME"

    sget-object v1, Lcom/jiliguala/niuwa/logic/q/b;->b:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/q/b;->i:I

    .line 161
    iget v0, p0, Lcom/jiliguala/niuwa/logic/q/b;->i:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/b;->g()I

    move-result v1

    .line 171
    .local v1, "lstValue":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 172
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->b:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 173
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 176
    :goto_1
    return-object v2

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->a:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_1
.end method

.method public i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/q/b;->g()I

    move-result v1

    .line 187
    .local v1, "lstValue":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->d:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 188
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->d:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 189
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 193
    .end local v0    # "index":I
    .end local v1    # "lstValue":I
    :goto_1
    return-object v2

    .line 187
    .restart local v0    # "index":I
    .restart local v1    # "lstValue":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "index":I
    .end local v1    # "lstValue":I
    :cond_1
    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_1
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/q/b;->l:Z

    return v0
.end method
