.class public Lcom/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.amplitude.api.AmplitudeClient"

.field public static final b:Ljava/lang/String; = "session_start"

.field public static final c:Ljava/lang/String; = "session_end"

.field public static final d:Ljava/lang/String; = "device_id"

.field public static final e:Ljava/lang/String; = "user_id"

.field public static final f:Ljava/lang/String; = "opt_out"

.field public static final g:Ljava/lang/String; = "sequence_number"

.field public static final h:Ljava/lang/String; = "last_event_time"

.field public static final i:Ljava/lang/String; = "last_event_id"

.field public static final j:Ljava/lang/String; = "last_identify_id"

.field public static final k:Ljava/lang/String; = "previous_session_id"

.field protected static l:Lcom/a/a/c;

.field private static final y:Lcom/a/a/d;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Lcom/a/a/g;

.field private F:I

.field private G:I

.field private H:I

.field private I:J

.field private J:J

.field private K:J

.field private L:Z

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected m:Landroid/content/Context;

.field protected n:Lokhttp3/y;

.field protected o:Lcom/a/a/f;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field s:J

.field t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field u:Ljava/lang/Throwable;

.field v:Ljava/lang/String;

.field w:Lcom/a/a/l;

.field x:Lcom/a/a/l;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v0

    sput-object v0, Lcom/a/a/c;->y:Lcom/a/a/d;

    .line 49
    new-instance v0, Lcom/a/a/c;

    invoke-direct {v0}, Lcom/a/a/c;-><init>()V

    sput-object v0, Lcom/a/a/c;->l:Lcom/a/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/a/a/c;->s:J

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/c;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    const-string v0, "https://api.amplitude.com/"

    iput-object v0, p0, Lcom/a/a/c;->v:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/a/a/l;

    const-string v1, "logThread"

    invoke-direct {v0, v1}, Lcom/a/a/l;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/c;->w:Lcom/a/a/l;

    .line 62
    new-instance v0, Lcom/a/a/l;

    const-string v1, "httpThread"

    invoke-direct {v0, v1}, Lcom/a/a/l;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/c;->x:Lcom/a/a/l;

    .line 63
    iput-boolean v2, p0, Lcom/a/a/c;->z:Z

    .line 64
    iput-boolean v2, p0, Lcom/a/a/c;->A:Z

    .line 65
    iput-boolean v2, p0, Lcom/a/a/c;->B:Z

    .line 66
    iput-boolean v2, p0, Lcom/a/a/c;->C:Z

    .line 67
    iput-boolean v2, p0, Lcom/a/a/c;->D:Z

    .line 69
    const/16 v0, 0x1e

    iput v0, p0, Lcom/a/a/c;->F:I

    .line 70
    const/16 v0, 0x64

    iput v0, p0, Lcom/a/a/c;->G:I

    .line 71
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/a/a/c;->H:I

    .line 72
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/a/a/c;->I:J

    .line 73
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/a/a/c;->J:J

    .line 74
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/a/a/c;->K:J

    .line 75
    iput-boolean v2, p0, Lcom/a/a/c;->L:Z

    .line 76
    iget v0, p0, Lcom/a/a/c;->G:I

    iput v0, p0, Lcom/a/a/c;->M:I

    .line 77
    iput-boolean v2, p0, Lcom/a/a/c;->N:Z

    .line 78
    iput-boolean v2, p0, Lcom/a/a/c;->O:Z

    .line 79
    iput-boolean v2, p0, Lcom/a/a/c;->P:Z

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/c;->Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iget-object v0, p0, Lcom/a/a/c;->w:Lcom/a/a/l;

    invoke-virtual {v0}, Lcom/a/a/l;->start()V

    .line 84
    iget-object v0, p0, Lcom/a/a/c;->x:Lcom/a/a/l;

    invoke-virtual {v0}, Lcom/a/a/l;->start()V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/a/a/c;I)I
    .locals 0
    .param p0, "x0"    # Lcom/a/a/c;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/a/a/c;->M:I

    return p1
.end method

.method private a(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 605
    iget-object v1, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual {v1, p1}, Lcom/a/a/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 606
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public static a()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/a/a/c;->l:Lcom/a/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/c;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/c;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/a/a/c;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/a/a/f;Ljava/lang/String;)V
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "defValue"    # J
    .param p4, "dbHelper"    # Lcom/a/a/f;
    .param p5, "dbKey"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-virtual {p4, p5}, Lcom/a/a/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 214
    .local v2, "value":Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 218
    .local v0, "oldValue":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p4, p5, v3}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/Long;)J

    .line 219
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/a/a/f;Ljava/lang/String;)V
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;
    .param p3, "dbHelper"    # Lcom/a/a/f;
    .param p4, "dbKey"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-virtual {p3, p4}, Lcom/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "oldValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    invoke-virtual {p3, p4, v0}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 231
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/a/a/f;Ljava/lang/String;)V
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "dbHelper"    # Lcom/a/a/f;
    .param p4, "dbKey"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p3, p4}, Lcom/a/a/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 238
    .local v1, "value":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 242
    .local v0, "oldValue":Z
    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, p4, v2}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/Long;)J

    .line 243
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 242
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c;->w:Lcom/a/a/l;

    if-eq v0, v1, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/a/a/c;->w:Lcom/a/a/l;

    invoke-virtual {v0, p1}, Lcom/a/a/l;->a(Ljava/lang/Runnable;)V

    .line 1238
    :goto_0
    return-void

    .line 1236
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-static {p0, v0, v0}, Lcom/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourcePkgName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v2, -0x1

    .line 178
    if-nez p1, :cond_0

    .line 179
    const-string p1, "com.amplitude.api"

    .line 183
    :cond_0
    invoke-static {p0}, Lcom/a/a/f;->a(Landroid/content/Context;)Lcom/a/a/f;

    move-result-object v4

    .line 184
    .local v4, "dbHelper":Lcom/a/a/f;
    const-string v1, "device_id"

    invoke-virtual {v4, v1}, Lcom/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "deviceId":Ljava/lang/String;
    const-string v1, "previous_session_id"

    invoke-virtual {v4, v1}, Lcom/a/a/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 186
    .local v9, "previousSessionId":Ljava/lang/Long;
    const-string v1, "last_event_time"

    invoke-virtual {v4, v1}, Lcom/a/a/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 187
    .local v7, "lastEventTime":Ljava/lang/Long;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v9, :cond_1

    if-eqz v7, :cond_1

    .line 208
    :goto_0
    return v11

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "prefsName":Ljava/lang/String;
    invoke-virtual {p0, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "com.amplitude.api.deviceId"

    const-string v5, "device_id"

    invoke-static {v0, v1, v12, v4, v5}, Lcom/a/a/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/a/a/f;Ljava/lang/String;)V

    .line 196
    const-string v1, "com.amplitude.api.lastEventTime"

    const-string v5, "last_event_time"

    invoke-static/range {v0 .. v5}, Lcom/a/a/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/a/a/f;Ljava/lang/String;)V

    .line 198
    const-string v1, "com.amplitude.api.lastEventId"

    const-string v5, "last_event_id"

    invoke-static/range {v0 .. v5}, Lcom/a/a/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/a/a/f;Ljava/lang/String;)V

    .line 200
    const-string v1, "com.amplitude.api.lastIdentifyId"

    const-string v5, "last_identify_id"

    invoke-static/range {v0 .. v5}, Lcom/a/a/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/a/a/f;Ljava/lang/String;)V

    .line 202
    const-string v1, "com.amplitude.api.previousSessionId"

    const-string v5, "previous_session_id"

    invoke-static/range {v0 .. v5}, Lcom/a/a/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;JLcom/a/a/f;Ljava/lang/String;)V

    .line 204
    const-string v1, "com.amplitude.api.userId"

    const-string v2, "user_id"

    invoke-static {v0, v1, v12, v4, v2}, Lcom/a/a/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/a/a/f;Ljava/lang/String;)V

    .line 206
    const-string v1, "com.amplitude.api.optOut"

    const-string v2, "opt_out"

    invoke-static {v0, v1, v10, v4, v2}, Lcom/a/a/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/a/a/f;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourcePkgName"    # Ljava/lang/String;
    .param p2, "targetPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 111
    if-nez p1, :cond_0

    .line 113
    :try_start_0
    const-string p1, "com.amplitude.api"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    const-class v7, Lcom/a/a/e;

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 120
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 121
    :try_start_2
    const-string p2, "com.amplitude.api"

    .line 125
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 165
    :cond_2
    :goto_1
    return v6

    .line 130
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "sourcePrefsName":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 134
    .local v2, "source":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "prefsName":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 140
    .local v5, "targetPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 143
    .local v4, "target":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".previousSessionId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 144
    const-string v7, "com.amplitude.api.previousSessionId"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".previousSessionId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, -0x1

    invoke-interface {v2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 146
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".deviceId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 147
    const-string v7, "com.amplitude.api.deviceId"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".deviceId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".userId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 150
    const-string v7, "com.amplitude.api.userId"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".userId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".optOut"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 153
    const-string v7, "com.amplitude.api.optOut"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".optOut"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    :cond_7
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    sget-object v7, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v8, "com.amplitude.api.AmplitudeClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upgraded shared preferences from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/a/a/d;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 163
    .end local v1    # "prefsName":Ljava/lang/String;
    .end local v2    # "source":Landroid/content/SharedPreferences;
    .end local v3    # "sourcePrefsName":Ljava/lang/String;
    .end local v4    # "target":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "targetPrefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v8, "com.amplitude.api.AmplitudeClient"

    const-string v9, "Error upgrading shared preferences"

    invoke-virtual {v7, v8, v9, v0}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/a/a/c;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/a/a/c;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/a/a/c;->P:Z

    return p1
.end method

.method static synthetic b(Lcom/a/a/c;)Lcom/a/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/c;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    return-object v0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/a/a/c;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/a/a/c;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/a/a/c;->L:Z

    return p1
.end method

.method static synthetic c(Lcom/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/a/a/c;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/a/a/c;->Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/a/a/c;)I
    .locals 1
    .param p0, "x0"    # Lcom/a/a/c;

    .prologue
    .line 32
    iget v0, p0, Lcom/a/a/c;->F:I

    return v0
.end method

.method static synthetic e(Lcom/a/a/c;)Z
    .locals 1
    .param p0, "x0"    # Lcom/a/a/c;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/a/a/c;->L:Z

    return v0
.end method

.method static synthetic f(Lcom/a/a/c;)I
    .locals 1
    .param p0, "x0"    # Lcom/a/a/c;

    .prologue
    .line 32
    iget v0, p0, Lcom/a/a/c;->G:I

    return v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 10
    .param p1, "sessionEvent"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 724
    const-string v0, "sendSessionEvent(\'%s\')"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    invoke-direct {p0}, Lcom/a/a/c;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 734
    .local v3, "apiProperties":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "special"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    invoke-virtual {p0}, Lcom/a/a/c;->j()J

    move-result-wide v6

    .local v6, "timestamp":J
    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    .line 740
    invoke-virtual/range {v0 .. v8}, Lcom/a/a/c;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    goto :goto_0

    .line 735
    .end local v6    # "timestamp":J
    :catch_0
    move-exception v9

    .line 736
    .local v9, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method private k(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 649
    iput-wide p1, p0, Lcom/a/a/c;->s:J

    .line 650
    invoke-virtual {p0, p1, p2}, Lcom/a/a/c;->f(J)V

    .line 651
    return-void
.end method

.method private l(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/a/a/c;->O:Z

    if-eqz v0, :cond_0

    .line 694
    const-string v0, "session_end"

    invoke-direct {p0, v0}, Lcom/a/a/c;->h(Ljava/lang/String;)V

    .line 698
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/a/a/c;->k(J)V

    .line 699
    invoke-virtual {p0, p1, p2}, Lcom/a/a/c;->h(J)V

    .line 700
    iget-boolean v0, p0, Lcom/a/a/c;->O:Z

    if-eqz v0, :cond_1

    .line 701
    const-string v0, "session_start"

    invoke-direct {p0, v0}, Lcom/a/a/c;->h(Ljava/lang/String;)V

    .line 703
    :cond_1
    return-void
.end method

.method private m(J)Z
    .locals 7
    .param p1, "timestamp"    # J

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/a/a/c;->j()J

    move-result-wide v0

    .line 711
    .local v0, "lastEventTime":J
    iget-boolean v4, p0, Lcom/a/a/c;->N:Z

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/a/a/c;->J:J

    .line 712
    .local v2, "sessionLimit":J
    :goto_0
    sub-long v4, p1, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 711
    .end local v2    # "sessionLimit":J
    :cond_0
    iget-wide v2, p0, Lcom/a/a/c;->K:J

    goto :goto_0

    .line 712
    .restart local v2    # "sessionLimit":J
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private n(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 944
    iget-object v0, p0, Lcom/a/a/c;->Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->w:Lcom/a/a/l;

    new-instance v1, Lcom/a/a/c$8;

    invoke-direct {v1, p0}, Lcom/a/a/c$8;-><init>(Lcom/a/a/c;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/a/a/l;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method static synthetic u()Lcom/a/a/d;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/a/a/c;->y:Lcom/a/a/d;

    return-object v0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/c;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/a/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    .line 305
    new-instance v0, Lcom/a/a/c$1;

    invoke-direct {v0, p0}, Lcom/a/a/c$1;-><init>(Lcom/a/a/c;)V

    invoke-direct {p0, v0}, Lcom/a/a/c;->a(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method private w()Z
    .locals 4

    .prologue
    .line 706
    iget-wide v0, p0, Lcom/a/a/c;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1195
    .local v0, "invalidDeviceIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1196
    const-string v1, "9774d56d682e549c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1197
    const-string v1, "unknown"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1198
    const-string v1, "000000000000000"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1199
    const-string v1, "Android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1200
    const-string v1, "DEFACE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1202
    return-object v0
.end method

.method private y()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1206
    invoke-direct {p0}, Lcom/a/a/c;->x()Ljava/util/Set;

    move-result-object v2

    .line 1209
    .local v2, "invalidIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v5, "device_id"

    invoke-virtual {v4, v5}, Lcom/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1229
    .end local v1    # "deviceId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1214
    .restart local v1    # "deviceId":Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/a/a/c;->z:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/a/a/c;->A:Z

    if-eqz v4, :cond_1

    .line 1218
    iget-object v4, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v4}, Lcom/a/a/g;->l()Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, "advertisingId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1220
    iget-object v4, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v5, "device_id"

    invoke-virtual {v4, v5, v0}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-object v1, v0

    .line 1221
    goto :goto_0

    .line 1227
    .end local v0    # "advertisingId":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v5}, Lcom/a/a/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1228
    .local v3, "randomId":Ljava/lang/String;
    iget-object v4, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v5, "device_id"

    invoke-virtual {v4, v5, v3}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-object v1, v3

    .line 1229
    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/List;Ljava/util/List;J)Landroid/util/Pair;
    .locals 19
    .param p3, "numEvents"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;J)",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1007
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .local p2, "identifys":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 1008
    .local v8, "merged":Lorg/json/JSONArray;
    const-wide/16 v4, -0x1

    .line 1009
    .local v4, "maxEventId":J
    const-wide/16 v6, -0x1

    .line 1011
    .local v6, "maxIdentifyId":J
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    int-to-long v12, v11

    cmp-long v11, v12, p3

    if-gez v11, :cond_0

    .line 1012
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    .line 1013
    .local v9, "noEvents":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    .line 1018
    .local v10, "noIdentifys":Z
    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    .line 1019
    sget-object v11, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v12, "com.amplitude.api.AmplitudeClient"

    const-string v13, "mergeEventsAndIdentifys: number of events and identifys less than expected by %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 1020
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v16, p3, v16

    .line 1019
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    .end local v9    # "noEvents":Z
    .end local v10    # "noIdentifys":Z
    :cond_0
    new-instance v11, Landroid/util/Pair;

    new-instance v12, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v11, v12, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11

    .line 1024
    .restart local v9    # "noEvents":Z
    .restart local v10    # "noIdentifys":Z
    :cond_1
    if-eqz v10, :cond_2

    .line 1025
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1026
    .local v2, "event":Lorg/json/JSONObject;
    const-string v11, "event_id"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1027
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1030
    .end local v2    # "event":Lorg/json/JSONObject;
    :cond_2
    if-eqz v9, :cond_3

    .line 1031
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1032
    .local v3, "identify":Lorg/json/JSONObject;
    const-string v11, "event_id"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1033
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1038
    .end local v3    # "identify":Lorg/json/JSONObject;
    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v12, "sequence_number"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v12, "sequence_number"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v14, "sequence_number"

    .line 1039
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-gez v11, :cond_5

    .line 1040
    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1041
    .restart local v2    # "event":Lorg/json/JSONObject;
    const-string v11, "event_id"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1042
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 1044
    .end local v2    # "event":Lorg/json/JSONObject;
    :cond_5
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1045
    .restart local v3    # "identify":Lorg/json/JSONObject;
    const-string v11, "event_id"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1046
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0
.end method

.method public a(I)Lcom/a/a/c;
    .locals 0
    .param p1, "eventUploadThreshold"    # I

    .prologue
    .line 342
    iput p1, p0, Lcom/a/a/c;->F:I

    .line 343
    return-object p0
.end method

.method public a(J)Lcom/a/a/c;
    .locals 1
    .param p1, "minTimeBetweenSessionsMillis"    # J

    .prologue
    .line 363
    iput-wide p1, p0, Lcom/a/a/c;->J:J

    .line 364
    return-object p0
.end method

.method public a(Landroid/app/Application;)Lcom/a/a/c;
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/a/a/c;->N:Z

    if-nez v0, :cond_0

    const-string v0, "enableForegroundTracking()"

    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object p0

    .line 296
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 297
    new-instance v0, Lcom/a/a/b;

    invoke-direct {v0, p0}, Lcom/a/a/b;-><init>(Lcom/a/a/c;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method public a(Z)Lcom/a/a/c;
    .locals 0
    .param p1, "newDeviceIdPerInstall"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/a/a/c;->z:Z

    .line 317
    return-object p0
.end method

.method protected a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1241
    if-nez p1, :cond_0

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method protected a([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 1257
    const/16 v4, 0x10

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 1258
    .local v0, "hexArray":[C
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 1260
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 1261
    aget-byte v4, p1, v2

    and-int/lit16 v3, v4, 0xff

    .line 1262
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 1263
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 1260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1265
    .end local v3    # "v":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 1257
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public a(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 891
    if-nez p1, :cond_1

    .line 892
    const/4 p1, 0x0

    .line 905
    .end local p1    # "array":Lorg/json/JSONArray;
    :cond_0
    return-object p1

    .line 895
    .restart local p1    # "array":Lorg/json/JSONArray;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 896
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 897
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 898
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/a/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 895
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 900
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/a/a/c;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 901
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 902
    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/a/a/c;->a(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method

.method public a(D)V
    .locals 3
    .param p1, "amount"    # D

    .prologue
    .line 766
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/a/a/c;->a(Ljava/lang/String;ID)V

    .line 767
    return-void
.end method

.method public a(Lcom/a/a/h;)V
    .locals 9
    .param p1, "identify"    # Lcom/a/a/h;

    .prologue
    const/4 v2, 0x0

    .line 845
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/a/a/h;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "identify()"

    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    const-string v1, "$identify"

    iget-object v4, p1, Lcom/a/a/h;->b:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/a/a/c;->t()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v8}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    goto :goto_0
.end method

.method public a(Lcom/a/a/j;)V
    .locals 2
    .param p1, "revenue"    # Lcom/a/a/j;

    .prologue
    .line 794
    const-string v0, "logRevenueV2()"

    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    const-string v0, "revenue_amount"

    invoke-virtual {p1}, Lcom/a/a/j;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 422
    return-void
.end method

.method public a(Ljava/lang/String;ID)V
    .locals 9
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "price"    # D

    .prologue
    const/4 v6, 0x0

    .line 770
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/a/a/c;->a(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public a(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "price"    # D
    .param p5, "receipt"    # Ljava/lang/String;
    .param p6, "receiptSignature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 774
    const-string v0, "logRevenue()"

    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    :goto_0
    return-void

    .line 779
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 781
    .local v3, "apiProperties":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "special"

    const-string v1, "revenue_amount"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    const-string v0, "productId"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 783
    const-string v0, "quantity"

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 784
    const-string v0, "price"

    invoke-virtual {v3, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 785
    const-string v0, "receipt"

    invoke-virtual {v3, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    const-string v0, "receiptSig"

    invoke-virtual {v3, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_1
    const-string v1, "revenue_amount"

    invoke-virtual {p0}, Lcom/a/a/c;->t()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v8}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    goto :goto_0

    .line 787
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .param p1, "groupType"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 852
    const-string v0, "setGroup()"

    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    const/4 v5, 0x0

    .line 857
    .local v5, "group":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 861
    :goto_1
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/h;

    move-result-object v10

    .line 862
    .local v10, "identify":Lcom/a/a/h;
    const-string v1, "$identify"

    iget-object v4, v10, Lcom/a/a/h;->b:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/a/a/c;->t()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v8}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    goto :goto_0

    .line 858
    .end local v10    # "identify":Lcom/a/a/h;
    :catch_0
    move-exception v9

    .line 859
    .local v9, "e":Lorg/json/JSONException;
    sget-object v0, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v1, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v9}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 426
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "groups"    # Lorg/json/JSONObject;

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 434
    return-void
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 12
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "apiProperties"    # Lorg/json/JSONObject;
    .param p4, "userProperties"    # Lorg/json/JSONObject;
    .param p5, "groups"    # Lorg/json/JSONObject;
    .param p6, "timestamp"    # J
    .param p8, "outOfSession"    # Z

    .prologue
    .line 481
    if-eqz p2, :cond_0

    .line 482
    invoke-static {p2}, Lcom/a/a/k;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 485
    :cond_0
    if-eqz p4, :cond_1

    .line 486
    invoke-static/range {p4 .. p4}, Lcom/a/a/k;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p4

    .line 489
    :cond_1
    if-eqz p5, :cond_2

    .line 490
    invoke-static/range {p5 .. p5}, Lcom/a/a/k;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p5

    .line 493
    :cond_2
    move-object v4, p2

    .line 494
    .local v4, "copyEventProperties":Lorg/json/JSONObject;
    move-object/from16 v6, p4

    .line 495
    .local v6, "copyUserProperties":Lorg/json/JSONObject;
    move-object/from16 v7, p5

    .line 496
    .local v7, "copyGroups":Lorg/json/JSONObject;
    new-instance v1, Lcom/a/a/c$3;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/a/a/c$3;-><init>(Lcom/a/a/c;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    invoke-direct {p0, v1}, Lcom/a/a/c;->a(Ljava/lang/Runnable;)V

    .line 502
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 9
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "groups"    # Lorg/json/JSONObject;
    .param p4, "outOfSession"    # Z

    .prologue
    const/4 v3, 0x0

    .line 437
    invoke-virtual {p0, p1}, Lcom/a/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/a/a/c;->t()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    .line 440
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "outOfSession"    # Z

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 430
    return-void
.end method

.method protected a(Lokhttp3/y;Ljava/lang/String;JJ)V
    .locals 21
    .param p1, "client"    # Lokhttp3/y;
    .param p2, "events"    # Ljava/lang/String;
    .param p3, "maxEventId"    # J
    .param p5, "maxIdentifyId"    # J

    .prologue
    .line 1056
    const-string v8, "2"

    .line 1057
    .local v8, "apiVersionString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c;->t()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1059
    .local v18, "timestampString":Ljava/lang/String;
    const-string v10, ""

    .line 1061
    .local v10, "checksumString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/c;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1067
    .local v14, "preimage":Ljava/lang/String;
    new-instance v12, Lcom/a/b/a;

    invoke-direct {v12}, Lcom/a/b/a;-><init>()V

    .line 1068
    .local v12, "messageDigest":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {v14, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1076
    .end local v12    # "messageDigest":Ljava/security/MessageDigest;
    .end local v14    # "preimage":Ljava/lang/String;
    :goto_0
    new-instance v2, Lokhttp3/r$a;

    invoke-direct {v2}, Lokhttp3/r$a;-><init>()V

    const-string v3, "v"

    invoke-virtual {v2, v3, v8}, Lokhttp3/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    move-result-object v2

    const-string v3, "client"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/c;->p:Ljava/lang/String;

    .line 1077
    invoke-virtual {v2, v3, v4}, Lokhttp3/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    move-result-object v2

    const-string v3, "e"

    .line 1078
    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lokhttp3/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    move-result-object v2

    const-string v3, "upload_time"

    .line 1079
    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lokhttp3/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    move-result-object v2

    const-string v3, "checksum"

    .line 1080
    invoke-virtual {v2, v3, v10}, Lokhttp3/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    move-result-object v2

    .line 1081
    invoke-virtual {v2}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v9

    .line 1083
    .local v9, "body":Lokhttp3/r;
    new-instance v2, Lokhttp3/aa$a;

    invoke-direct {v2}, Lokhttp3/aa$a;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/c;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v2

    invoke-virtual {v2, v9}, Lokhttp3/aa$a;->a(Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/aa$a;->d()Lokhttp3/aa;

    move-result-object v15

    .line 1085
    .local v15, "request":Lokhttp3/aa;
    const/16 v19, 0x0

    .line 1088
    .local v19, "uploadSuccess":Z
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lokhttp3/y;->a(Lokhttp3/aa;)Lokhttp3/e;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/e;->b()Lokhttp3/ac;

    move-result-object v16

    .line 1089
    .local v16, "response":Lokhttp3/ac;
    invoke-virtual/range {v16 .. v16}, Lokhttp3/ac;->h()Lokhttp3/ad;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ad;->string()Ljava/lang/String;

    move-result-object v17

    .line 1090
    .local v17, "stringResponse":Ljava/lang/String;
    const-string v2, "success"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1091
    const/16 v19, 0x1

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/c;->w:Lcom/a/a/l;

    move-object/from16 v20, v0

    new-instance v2, Lcom/a/a/c$10;

    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/a/a/c$10;-><init>(Lcom/a/a/c;JJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/a/a/l;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1166
    .end local v16    # "response":Lokhttp3/ac;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :goto_1
    if-nez v19, :cond_0

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1170
    :cond_0
    return-void

    .line 1069
    .end local v9    # "body":Lokhttp3/r;
    .end local v15    # "request":Lokhttp3/aa;
    .end local v19    # "uploadSuccess":Z
    :catch_0
    move-exception v11

    .line 1073
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1113
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v9    # "body":Lokhttp3/r;
    .restart local v15    # "request":Lokhttp3/aa;
    .restart local v16    # "response":Lokhttp3/ac;
    .restart local v17    # "stringResponse":Ljava/lang/String;
    .restart local v19    # "uploadSuccess":Z
    :cond_1
    :try_start_2
    const-string v2, "invalid_api_key"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1114
    sget-object v2, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Invalid API key, make sure your API key is correct in initialize()"

    invoke-virtual {v2, v3, v4}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_1

    .line 1145
    .end local v16    # "response":Lokhttp3/ac;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1148
    .local v11, "e":Ljava/net/ConnectException;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/a/a/c;->u:Ljava/lang/Throwable;

    goto :goto_1

    .line 1115
    .end local v11    # "e":Ljava/net/ConnectException;
    .restart local v16    # "response":Lokhttp3/ac;
    .restart local v17    # "stringResponse":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v2, "bad_checksum"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1116
    sget-object v2, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Bad checksum, post request was mangled in transit, will attempt to reupload later"

    invoke-virtual {v2, v3, v4}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 1149
    .end local v16    # "response":Lokhttp3/ac;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 1152
    .local v11, "e":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/a/a/c;->u:Ljava/lang/Throwable;

    goto :goto_1

    .line 1117
    .end local v11    # "e":Ljava/net/UnknownHostException;
    .restart local v16    # "response":Lokhttp3/ac;
    .restart local v17    # "stringResponse":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v2, "request_db_write_failed"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1118
    sget-object v2, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Couldn\'t write to request database on server, will attempt to reupload later"

    invoke-virtual {v2, v3, v4}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .line 1153
    .end local v16    # "response":Lokhttp3/ac;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 1154
    .local v11, "e":Ljava/io/IOException;
    sget-object v2, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/a/a/c;->u:Ljava/lang/Throwable;

    goto :goto_1

    .line 1119
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v16    # "response":Lokhttp3/ac;
    .restart local v17    # "stringResponse":Ljava/lang/String;
    :cond_4
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lokhttp3/ac;->c()I

    move-result v2

    const/16 v3, 0x19d

    if-ne v2, v3, :cond_7

    .line 1122
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/a/a/c;->L:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/c;->M:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1123
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_5

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c;->o:Lcom/a/a/f;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/a/a/f;->e(J)V

    .line 1125
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_6

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c;->o:Lcom/a/a/f;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/a/a/f;->f(J)V

    .line 1131
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/a/a/c;->L:Z

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual {v2}, Lcom/a/a/f;->a()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/c;->M:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1133
    .local v13, "numEvents":I
    int-to-double v2, v13

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/c;->M:I

    .line 1134
    sget-object v2, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Request too large, will decrease size and attempt to reupload"

    invoke-virtual {v2, v3, v4}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c;->w:Lcom/a/a/l;

    new-instance v3, Lcom/a/a/c$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/a/a/c$2;-><init>(Lcom/a/a/c;)V

    invoke-virtual {v2, v3}, Lcom/a/a/l;->a(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 1156
    .end local v13    # "numEvents":I
    .end local v16    # "response":Lokhttp3/ac;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 1158
    .local v11, "e":Ljava/lang/AssertionError;
    sget-object v2, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Exception:"

    invoke-virtual {v2, v3, v4, v11}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/a/a/c;->u:Ljava/lang/Throwable;

    goto/16 :goto_1

    .line 1143
    .end local v11    # "e":Ljava/lang/AssertionError;
    .restart local v16    # "response":Lokhttp3/ac;
    .restart local v17    # "stringResponse":Ljava/lang/String;
    :cond_7
    :try_start_6
    sget-object v2, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upload failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", will attempt to reupload later"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 1160
    .end local v16    # "response":Lokhttp3/ac;
    .end local v17    # "stringResponse":Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 1162
    .local v11, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.AmplitudeClient"

    const-string v4, "Exception:"

    invoke-virtual {v2, v3, v4, v11}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1163
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/a/a/c;->u:Ljava/lang/Throwable;

    goto/16 :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "userProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 807
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setUserProperties"

    .line 808
    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    new-instance v0, Lcom/a/a/c$6;

    invoke-direct {v0, p0, p1}, Lcom/a/a/c$6;-><init>(Lcom/a/a/c;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/a/a/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 0
    .param p1, "userProperties"    # Lorg/json/JSONObject;
    .param p2, "replace"    # Z

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Lcom/a/a/c;->a(Lorg/json/JSONObject;)V

    .line 804
    return-void
.end method

.method protected b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J
    .locals 12
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "apiProperties"    # Lorg/json/JSONObject;
    .param p4, "userProperties"    # Lorg/json/JSONObject;
    .param p5, "groups"    # Lorg/json/JSONObject;
    .param p6, "timestamp"    # J
    .param p8, "outOfSession"    # Z

    .prologue
    .line 506
    sget-object v8, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v9, "com.amplitude.api.AmplitudeClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Logged event to Amplitude: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-boolean v8, p0, Lcom/a/a/c;->C:Z

    if-eqz v8, :cond_0

    .line 509
    const-wide/16 v8, -0x1

    .line 571
    :goto_0
    return-wide v8

    .line 513
    :cond_0
    iget-boolean v8, p0, Lcom/a/a/c;->O:Z

    if-eqz v8, :cond_6

    const-string v8, "session_start"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "session_end"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_1
    const/4 v7, 0x1

    .line 515
    .local v7, "loggingSessionEvent":Z
    :goto_1
    if-nez v7, :cond_2

    if-nez p8, :cond_2

    .line 517
    iget-boolean v8, p0, Lcom/a/a/c;->P:Z

    if-nez v8, :cond_7

    .line 518
    move-wide/from16 v0, p6

    invoke-virtual {p0, v0, v1}, Lcom/a/a/c;->g(J)Z

    .line 524
    :cond_2
    :goto_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 526
    .local v3, "event":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "event_type"

    invoke-virtual {p0, p1}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string v8, "timestamp"

    move-wide/from16 v0, p6

    invoke-virtual {v3, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 528
    const-string v8, "user_id"

    iget-object v9, p0, Lcom/a/a/c;->q:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    const-string v8, "device_id"

    iget-object v9, p0, Lcom/a/a/c;->r:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    const-string v10, "session_id"

    if-eqz p8, :cond_8

    const-wide/16 v8, -0x1

    :goto_3
    invoke-virtual {v3, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 531
    const-string v8, "version_name"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string v8, "os_name"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string v8, "os_version"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string v8, "device_brand"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    const-string v8, "device_manufacturer"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    const-string v8, "device_model"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    const-string v8, "carrier"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v8, "country"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string v8, "language"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    const-string v8, "platform"

    const-string v9, "Android"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    const-string v8, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string v8, "sequence_number"

    invoke-virtual {p0}, Lcom/a/a/c;->i()J

    move-result-wide v10

    invoke-virtual {v3, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 544
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 545
    .local v4, "library":Lorg/json/JSONObject;
    const-string v8, "name"

    const-string v9, "amplitude-android"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string v8, "version"

    const-string v9, "2.7.1"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    const-string v8, "library"

    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    if-nez p3, :cond_3

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object p3, v8

    .line 550
    :cond_3
    iget-object v8, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v8}, Lcom/a/a/g;->o()Landroid/location/Location;

    move-result-object v5

    .line 551
    .local v5, "location":Landroid/location/Location;
    if-eqz v5, :cond_4

    .line 552
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 553
    .local v6, "locationJSON":Lorg/json/JSONObject;
    const-string v8, "lat"

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v6, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 554
    const-string v8, "lng"

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v6, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 555
    const-string v8, "location"

    invoke-virtual {p3, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    .end local v6    # "locationJSON":Lorg/json/JSONObject;
    :cond_4
    iget-object v8, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v8}, Lcom/a/a/g;->l()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 558
    const-string v8, "androidADID"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    :cond_5
    const-string v8, "limit_ad_tracking"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->m()Z

    move-result v9

    invoke-virtual {p3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 561
    const-string v8, "gps_enabled"

    iget-object v9, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    invoke-virtual {v9}, Lcom/a/a/g;->n()Z

    move-result v9

    invoke-virtual {p3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 563
    const-string v8, "api_properties"

    invoke-virtual {v3, v8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v9, "event_properties"

    if-nez p2, :cond_9

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :goto_4
    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v9, "user_properties"

    if-nez p4, :cond_a

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :goto_5
    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    const-string v9, "groups"

    if-nez p5, :cond_b

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :goto_6
    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v4    # "library":Lorg/json/JSONObject;
    .end local v5    # "location":Landroid/location/Location;
    :goto_7
    invoke-virtual {p0, p1, v3}, Lcom/a/a/c;->c(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v8

    goto/16 :goto_0

    .line 513
    .end local v3    # "event":Lorg/json/JSONObject;
    .end local v7    # "loggingSessionEvent":Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 520
    .restart local v7    # "loggingSessionEvent":Z
    :cond_7
    move-wide/from16 v0, p6

    invoke-virtual {p0, v0, v1}, Lcom/a/a/c;->h(J)V

    goto/16 :goto_2

    .line 530
    .restart local v3    # "event":Lorg/json/JSONObject;
    :cond_8
    :try_start_1
    iget-wide v8, p0, Lcom/a/a/c;->s:J

    goto/16 :goto_3

    .line 564
    .restart local v4    # "library":Lorg/json/JSONObject;
    .restart local v5    # "location":Landroid/location/Location;
    :cond_9
    invoke-virtual {p0, p2}, Lcom/a/a/c;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_4

    .line 565
    :cond_a
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/a/a/c;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_5

    .line 566
    :cond_b
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/a/a/c;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_6

    .line 567
    .end local v4    # "library":Lorg/json/JSONObject;
    .end local v5    # "location":Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 568
    .local v2, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v9, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public b()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/c;->A:Z

    .line 322
    return-object p0
.end method

.method public b(I)Lcom/a/a/c;
    .locals 0
    .param p1, "eventUploadMaxBatchSize"    # I

    .prologue
    .line 347
    iput p1, p0, Lcom/a/a/c;->G:I

    .line 348
    iput p1, p0, Lcom/a/a/c;->M:I

    .line 349
    return-object p0
.end method

.method public b(J)Lcom/a/a/c;
    .locals 1
    .param p1, "sessionTimeoutMillis"    # J

    .prologue
    .line 368
    iput-wide p1, p0, Lcom/a/a/c;->K:J

    .line 369
    return-object p0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Lcom/a/a/c;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/c;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 251
    monitor-enter p0

    if-nez p1, :cond_0

    .line 252
    :try_start_0
    sget-object v4, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v5, "com.amplitude.api.AmplitudeClient"

    const-string v6, "Argument context cannot be null in initialize()"

    invoke-virtual {v4, v5, v6}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    .line 288
    .end local p0    # "this":Lcom/a/a/c;
    .local v1, "this":Lcom/a/a/c;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 256
    .end local v1    # "this":Lcom/a/a/c;
    .restart local p0    # "this":Lcom/a/a/c;
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/a/a/c;->a(Landroid/content/Context;)Z

    .line 257
    invoke-static {p1}, Lcom/a/a/c;->b(Landroid/content/Context;)Z

    .line 259
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    sget-object v4, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v5, "com.amplitude.api.AmplitudeClient"

    const-string v6, "Argument apiKey cannot be null or blank in initialize()"

    invoke-virtual {v4, v5, v6}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    .line 261
    .end local p0    # "this":Lcom/a/a/c;
    .restart local v1    # "this":Lcom/a/a/c;
    goto :goto_0

    .line 263
    .end local v1    # "this":Lcom/a/a/c;
    .restart local p0    # "this":Lcom/a/a/c;
    :cond_1
    iget-boolean v5, p0, Lcom/a/a/c;->B:Z

    if-nez v5, :cond_3

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/a/a/c;->m:Landroid/content/Context;

    .line 265
    new-instance v5, Lokhttp3/y;

    invoke-direct {v5}, Lokhttp3/y;-><init>()V

    iput-object v5, p0, Lcom/a/a/c;->n:Lokhttp3/y;

    .line 266
    iget-object v5, p0, Lcom/a/a/c;->m:Landroid/content/Context;

    invoke-static {v5}, Lcom/a/a/f;->a(Landroid/content/Context;)Lcom/a/a/f;

    move-result-object v5

    iput-object v5, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    .line 267
    iput-object p2, p0, Lcom/a/a/c;->p:Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Lcom/a/a/c;->v()V

    .line 270
    if-eqz p3, :cond_4

    .line 271
    iput-object p3, p0, Lcom/a/a/c;->q:Ljava/lang/String;

    .line 272
    iget-object v5, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v6, "user_id"

    invoke-virtual {v5, v6, p3}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 276
    :goto_1
    iget-object v5, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v6, "opt_out"

    invoke-virtual {v5, v6}, Lcom/a/a/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 277
    .local v0, "optOut":Ljava/lang/Long;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    :goto_2
    iput-boolean v4, p0, Lcom/a/a/c;->C:Z

    .line 280
    invoke-virtual {p0}, Lcom/a/a/c;->n()J

    move-result-wide v2

    .line 281
    .local v2, "previousSessionId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    .line 282
    iput-wide v2, p0, Lcom/a/a/c;->s:J

    .line 285
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/a/a/c;->B:Z

    .end local v0    # "optOut":Ljava/lang/Long;
    .end local v2    # "previousSessionId":J
    :cond_3
    move-object v1, p0

    .line 288
    .end local p0    # "this":Lcom/a/a/c;
    .restart local v1    # "this":Lcom/a/a/c;
    goto :goto_0

    .line 274
    .end local v1    # "this":Lcom/a/a/c;
    .restart local p0    # "this":Lcom/a/a/c;
    :cond_4
    iget-object v5, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Lcom/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/a/a/c;->q:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 251
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 277
    .restart local v0    # "optOut":Ljava/lang/Long;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public b(Z)Lcom/a/a/c;
    .locals 4
    .param p1, "optOut"    # Z

    .prologue
    .line 373
    const-string v0, "setOptOut()"

    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-object p0

    .line 377
    :cond_0
    iput-boolean p1, p0, Lcom/a/a/c;->C:Z

    .line 378
    iget-object v2, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v3, "opt_out"

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/Long;)J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 866
    if-nez p1, :cond_1

    .line 867
    const/4 p1, 0x0

    .line 887
    .end local p1    # "object":Lorg/json/JSONObject;
    :cond_0
    return-object p1

    .line 870
    .restart local p1    # "object":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 871
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 872
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 874
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 875
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 876
    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/a/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v5, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 878
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/a/a/c;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 879
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/json/JSONArray;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 880
    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/a/a/c;->a(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/c;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 444
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/a/c;->b(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 448
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "group"    # Lorg/json/JSONObject;

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/a/a/c;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 456
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 9
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "groups"    # Lorg/json/JSONObject;
    .param p4, "outOfSession"    # Z

    .prologue
    const/4 v3, 0x0

    .line 459
    invoke-virtual {p0, p1}, Lcom/a/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/a/a/c;->t()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/a/a/c;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    .line 462
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;
    .param p3, "outOfSession"    # Z

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/a/a/c;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 452
    return-void
.end method

.method protected c(Ljava/lang/String;Lorg/json/JSONObject;)J
    .locals 10
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/json/JSONObject;

    .prologue
    .line 576
    const-string v3, "$identify"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 577
    iget-object v3, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/a/a/f;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 578
    .local v0, "eventId":J
    invoke-virtual {p0, v0, v1}, Lcom/a/a/c;->e(J)V

    .line 584
    :goto_0
    const/4 v3, 0x1

    iget v6, p0, Lcom/a/a/c;->H:I

    div-int/lit8 v6, v6, 0xa

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v6, 0x14

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 585
    .local v2, "numEventsToRemove":I
    iget-object v3, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual {v3}, Lcom/a/a/f;->a()J

    move-result-wide v6

    iget v3, p0, Lcom/a/a/c;->H:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 586
    iget-object v3, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    iget-object v6, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Lcom/a/a/f;->a(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/a/a/f;->c(J)V

    .line 588
    :cond_0
    iget-object v3, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual {v3}, Lcom/a/a/f;->b()J

    move-result-wide v6

    iget v3, p0, Lcom/a/a/c;->H:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 589
    iget-object v3, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    iget-object v6, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Lcom/a/a/f;->b(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/a/a/f;->d(J)V

    .line 592
    :cond_1
    iget-object v3, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual {v3}, Lcom/a/a/f;->c()J

    move-result-wide v4

    .line 593
    .local v4, "totalEventCount":J
    iget v3, p0, Lcom/a/a/c;->F:I

    int-to-long v6, v3

    rem-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    iget v3, p0, Lcom/a/a/c;->F:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 594
    invoke-virtual {p0}, Lcom/a/a/c;->r()V

    .line 599
    :goto_1
    return-wide v0

    .line 580
    .end local v0    # "eventId":J
    .end local v2    # "numEventsToRemove":I
    .end local v4    # "totalEventCount":J
    :cond_2
    iget-object v3, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/a/a/f;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 581
    .restart local v0    # "eventId":J
    invoke-virtual {p0, v0, v1}, Lcom/a/a/c;->d(J)V

    goto :goto_0

    .line 596
    .restart local v2    # "numEventsToRemove":I
    .restart local v4    # "totalEventCount":J
    :cond_3
    iget-wide v6, p0, Lcom/a/a/c;->I:J

    invoke-direct {p0, v6, v7}, Lcom/a/a/c;->n(J)V

    goto :goto_1
.end method

.method public c()Lcom/a/a/c;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize before acting on location listening."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/a/g;->a(Z)V

    .line 330
    return-object p0
.end method

.method public c(I)Lcom/a/a/c;
    .locals 0
    .param p1, "eventMaxCount"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/a/a/c;->H:I

    .line 354
    return-object p0
.end method

.method public c(Z)Lcom/a/a/c;
    .locals 1
    .param p1, "enableLogging"    # Z

    .prologue
    .line 387
    sget-object v0, Lcom/a/a/c;->y:Lcom/a/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/d;->a(Z)Lcom/a/a/d;

    .line 388
    return-object p0
.end method

.method c(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 622
    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v1, "last_event_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/Long;)J

    .line 623
    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v1, "com.amplitude.api.AmplitudeClient"

    const-string v2, "Argument eventType cannot be null or blank in logEvent()"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v0, 0x0

    .line 470
    :goto_0
    return v0

    :cond_0
    const-string v0, "logEvent()"

    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public d()Lcom/a/a/c;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize before acting on location listening."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->E:Lcom/a/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/g;->a(Z)V

    .line 338
    return-object p0
.end method

.method public d(I)Lcom/a/a/c;
    .locals 2
    .param p1, "eventUploadPeriodMillis"    # I

    .prologue
    .line 358
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/a/a/c;->I:J

    .line 359
    return-object p0
.end method

.method public d(Z)Lcom/a/a/c;
    .locals 0
    .param p1, "offline"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/a/a/c;->D:Z

    .line 400
    if-nez p1, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/a/a/c;->q()V

    .line 404
    :cond_0
    return-object p0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    .line 909
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method d(J)V
    .locals 3
    .param p1, "eventId"    # J

    .prologue
    .line 630
    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v1, "last_event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/Long;)J

    .line 631
    return-void
.end method

.method public e(I)Lcom/a/a/c;
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 392
    sget-object v0, Lcom/a/a/c;->y:Lcom/a/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/d;->a(I)Lcom/a/a/d;

    .line 393
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/a/a/c;
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 921
    const-string v0, "setUserId()"

    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    :goto_0
    return-object p0

    .line 925
    :cond_0
    iput-object p1, p0, Lcom/a/a/c;->q:Ljava/lang/String;

    .line 926
    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0
.end method

.method public e(Z)Lcom/a/a/c;
    .locals 0
    .param p1, "trackingSessionEvents"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/a/a/c;->O:Z

    .line 409
    return-object p0
.end method

.method e(J)V
    .locals 3
    .param p1, "identifyId"    # J

    .prologue
    .line 638
    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v1, "last_identify_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/Long;)J

    .line 639
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/a/a/c;->C:Z

    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/a/a/c;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/a/a/c;->x()Ljava/util/Set;

    move-result-object v0

    .line 1182
    .local v0, "invalidDeviceIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "setDeviceId()"

    invoke-virtual {p0, v1}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1183
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-object p0

    .line 1187
    :cond_1
    iput-object p1, p0, Lcom/a/a/c;->r:Ljava/lang/String;

    .line 1188
    iget-object v1, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v2, "device_id"

    invoke-virtual {v1, v2, p1}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0
.end method

.method f()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/c;->N:Z

    .line 414
    return-void
.end method

.method f(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 658
    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v1, "previous_session_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/Long;)J

    .line 659
    return-void
.end method

.method protected f(Z)V
    .locals 22
    .param p1, "limit"    # Z

    .prologue
    .line 963
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/a/a/c;->C:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/a/a/c;->D:Z

    if-eqz v5, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/c;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 969
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual {v5}, Lcom/a/a/f;->c()J

    move-result-wide v18

    .line 970
    .local v18, "totalEventCount":J
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/c;->M:I

    int-to-long v0, v5

    move-wide/from16 v20, v0

    :goto_1
    move-wide/from16 v0, v20

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 972
    .local v12, "batchSize":J
    const-wide/16 v20, 0x0

    cmp-long v5, v12, v20

    if-gtz v5, :cond_3

    .line 973
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/c;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 970
    .end local v12    # "batchSize":J
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/c;->G:I

    int-to-long v0, v5

    move-wide/from16 v20, v0

    goto :goto_1

    .line 978
    .restart local v12    # "batchSize":J
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c;->k()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1, v12, v13}, Lcom/a/a/f;->a(JJ)Ljava/util/List;

    move-result-object v14

    .line 979
    .local v14, "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/c;->l()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1, v12, v13}, Lcom/a/a/f;->b(JJ)Ljava/util/List;

    move-result-object v15

    .line 981
    .local v15, "identifys":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/a/a/c;->a(Ljava/util/List;Ljava/util/List;J)Landroid/util/Pair;

    move-result-object v16

    .line 982
    .local v16, "merged":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;Lorg/json/JSONArray;>;"
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lorg/json/JSONArray;

    .line 983
    .local v17, "mergedEvents":Lorg/json/JSONArray;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 984
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/c;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 997
    .end local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v15    # "identifys":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v16    # "merged":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;Lorg/json/JSONArray;>;"
    .end local v17    # "mergedEvents":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 998
    .local v4, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/c;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 999
    sget-object v5, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v6, "com.amplitude.api.AmplitudeClient"

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 987
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v15    # "identifys":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v16    # "merged":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;Lorg/json/JSONArray;>;"
    .restart local v17    # "mergedEvents":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 988
    .local v8, "maxEventId":J
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 989
    .local v10, "maxIdentifyId":J
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    .line 991
    .local v7, "mergedEventsString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/c;->x:Lcom/a/a/l;

    move-object/from16 v20, v0

    new-instance v5, Lcom/a/a/c$9;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/a/a/c$9;-><init>(Lcom/a/a/c;Ljava/lang/String;JJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/a/a/l;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/a/a/c;->N:Z

    return v0
.end method

.method g(J)Z
    .locals 7
    .param p1, "timestamp"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 662
    invoke-direct {p0}, Lcom/a/a/c;->w()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    invoke-direct {p0, p1, p2}, Lcom/a/a/c;->m(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 665
    invoke-virtual {p0, p1, p2}, Lcom/a/a/c;->h(J)V

    .line 688
    :goto_0
    return v2

    .line 669
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/a/a/c;->l(J)V

    move v2, v3

    .line 670
    goto :goto_0

    .line 674
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/a/a/c;->m(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 675
    invoke-virtual {p0}, Lcom/a/a/c;->n()J

    move-result-wide v0

    .line 676
    .local v0, "previousSessionId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/a/a/c;->l(J)V

    move v2, v3

    .line 678
    goto :goto_0

    .line 682
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/a/a/c;->k(J)V

    .line 683
    invoke-virtual {p0, p1, p2}, Lcom/a/a/c;->h(J)V

    goto :goto_0

    .line 687
    .end local v0    # "previousSessionId":J
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/a/a/c;->l(J)V

    move v2, v3

    .line 688
    goto :goto_0
.end method

.method protected declared-synchronized g(Ljava/lang/String;)Z
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1245
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/a/a/c;->m:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1246
    sget-object v1, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v2, "com.amplitude.api.AmplitudeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context cannot be null, set context with initialize() before calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    :goto_0
    monitor-exit p0

    return v0

    .line 1249
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/a/a/c;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1250
    sget-object v1, Lcom/a/a/c;->y:Lcom/a/a/d;

    const-string v2, "com.amplitude.api.AmplitudeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apiKey cannot be null or empty, set apiKey with initialize() before calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1253
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method h(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/a/a/c;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/a/a/c;->c(J)V

    goto :goto_0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/a/a/c;->P:Z

    return v0
.end method

.method i()J
    .locals 6

    .prologue
    .line 611
    const-string v2, "sequence_number"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/a/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 612
    .local v0, "sequenceNumber":J
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 613
    iget-object v2, p0, Lcom/a/a/c;->o:Lcom/a/a/f;

    const-string v3, "sequence_number"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/Long;)J

    .line 614
    return-wide v0
.end method

.method i(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 744
    new-instance v0, Lcom/a/a/c$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/c$4;-><init>(Lcom/a/a/c;J)V

    invoke-direct {p0, v0}, Lcom/a/a/c;->a(Ljava/lang/Runnable;)V

    .line 751
    return-void
.end method

.method j()J
    .locals 4

    .prologue
    .line 618
    const-string v0, "last_event_time"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/a/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method j(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 754
    new-instance v0, Lcom/a/a/c$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/c$5;-><init>(Lcom/a/a/c;J)V

    invoke-direct {p0, v0}, Lcom/a/a/c;->a(Ljava/lang/Runnable;)V

    .line 761
    return-void
.end method

.method k()J
    .locals 4

    .prologue
    .line 626
    const-string v0, "last_event_id"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/a/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method l()J
    .locals 4

    .prologue
    .line 634
    const-string v0, "last_identify_id"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/a/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 645
    iget-wide v0, p0, Lcom/a/a/c;->s:J

    return-wide v0
.end method

.method n()J
    .locals 4

    .prologue
    .line 654
    const-string v0, "previous_session_id"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/a/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 840
    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1}, Lcom/a/a/h;->a()Lcom/a/a/h;

    move-result-object v0

    .line 841
    .local v0, "identify":Lcom/a/a/h;
    invoke-virtual {p0, v0}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 842
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q()V
    .locals 2

    .prologue
    .line 931
    const-string v0, "uploadEvents()"

    invoke-virtual {p0, v0}, Lcom/a/a/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    :goto_0
    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->w:Lcom/a/a/l;

    new-instance v1, Lcom/a/a/c$7;

    invoke-direct {v1, p0}, Lcom/a/a/c$7;-><init>(Lcom/a/a/c;)V

    invoke-virtual {v0, v1}, Lcom/a/a/l;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected r()V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/c;->f(Z)V

    .line 959
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/a/a/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method protected t()J
    .locals 2

    .prologue
    .line 1268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
