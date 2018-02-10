.class public Lcom/jiliguala/niuwa/logic/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "bulk_result"

.field private static final b:Ljava/lang/String; = "KEY"

.field private static c:Lcom/jiliguala/niuwa/logic/p/a;


# instance fields
.field private d:Landroid/content/SharedPreferences;

.field private e:Ljava/lang/String;

.field private f:Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/jiliguala/niuwa/logic/p/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/p/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/p/a;->c:Lcom/jiliguala/niuwa/logic/p/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->f:Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->g:[B

    .line 24
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/p/a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/jiliguala/niuwa/logic/p/a;->c:Lcom/jiliguala/niuwa/logic/p/a;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bulk_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->d:Landroid/content/SharedPreferences;

    .line 32
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 43
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/p/a;->g:[B

    monitor-enter v2

    .line 44
    :try_start_0
    const-string v0, ""

    .line 45
    .local v0, "json":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/p/a;->f:Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/p/a;->f:Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/p/a;->c()V

    .line 49
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/p/a;->d:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/p/a;->e()V

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/p/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "KEY"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    monitor-exit v2

    .line 54
    return-void

    .line 53
    .end local v0    # "json":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "typ"    # Ljava/lang/String;
    .param p3, "rid"    # Ljava/lang/String;
    .param p4, "dur"    # J
    .param p6, "ts"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/p/a;->g:[B

    monitor-enter v2

    .line 65
    :try_start_0
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate$DataPart;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate$DataPart;-><init>()V

    .line 66
    .local v0, "dataPart":Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate$DataPart;
    iput-object p1, v0, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate$DataPart;->bid:Ljava/lang/String;

    .line 67
    iput-object p3, v0, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate$DataPart;->rid:Ljava/lang/String;

    .line 68
    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate$DataPart;->typ:Ljava/lang/String;

    .line 69
    iput-wide p4, v0, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate$DataPart;->dur:J

    .line 70
    iput-object p6, v0, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate$DataPart;->ts:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/p/a;->f:Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/p/a;->f()V

    .line 73
    monitor-exit v2

    .line 74
    return-void

    .line 73
    .end local v0    # "dataPart":Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate$DataPart;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/p/a;->e()V

    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->d:Landroid/content/SharedPreferences;

    const-string v1, "KEY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->e:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->e:Ljava/lang/String;

    const-class v1, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->f:Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    .line 40
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->d:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->f:Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/p/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/p/a;->g:[B

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/p/a;->f:Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/4 v0, 0x0

    monitor-exit v2

    .line 82
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/p/a;->f:Lcom/jiliguala/niuwa/logic/network/json/BulkProgressTemplate;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "json":Ljava/lang/String;
    monitor-exit v2

    goto :goto_0

    .line 84
    .end local v0    # "json":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
