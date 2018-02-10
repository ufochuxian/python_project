.class public Lcom/jiliguala/niuwa/logic/k/b;
.super Lcom/jiliguala/niuwa/logic/k/d;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:[B

.field private static g:Lcom/jiliguala/niuwa/logic/k/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/jiliguala/niuwa/logic/k/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/b;->e:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/b;->f:[B

    .line 18
    new-instance v0, Lcom/jiliguala/niuwa/logic/k/b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/k/b;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/b;->g:Lcom/jiliguala/niuwa/logic/k/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/k/d;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/k/b;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/k/b;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/k/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/k/b;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/jiliguala/niuwa/logic/k/b;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/k/b;->g:Lcom/jiliguala/niuwa/logic/k/b;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/jiliguala/niuwa/logic/k/b;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/k/b;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/b;->g:Lcom/jiliguala/niuwa/logic/k/b;

    .line 30
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/k/b;->g:Lcom/jiliguala/niuwa/logic/k/b;

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c()[B
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/jiliguala/niuwa/logic/k/b;->f:[B

    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Lcom/jiliguala/niuwa/logic/db/a/d;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/db/a/d;-><init>()V

    .line 61
    .local v0, "metaData":Lcom/jiliguala/niuwa/logic/db/a/d;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/db/a/d;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/logic/db/a/d;->b(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/d;->d()Landroid/content/ContentValues;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 35
    const-string v3, "key = ?"

    .line 36
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 37
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 39
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/d;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 40
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 42
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    new-instance v8, Lcom/jiliguala/niuwa/logic/db/a/d;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/db/a/d;-><init>()V

    .line 44
    .local v8, "item":Lcom/jiliguala/niuwa/logic/db/a/d;
    invoke-virtual {v8, v6}, Lcom/jiliguala/niuwa/logic/db/a/d;->a(Landroid/database/Cursor;)V

    .line 45
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/db/a/d;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 52
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 56
    .end local v8    # "item":Lcom/jiliguala/niuwa/logic/db/a/d;
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 56
    goto :goto_0

    .line 48
    :catch_0
    move-exception v7

    .line 52
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v9

    .line 50
    goto :goto_0

    .line 52
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/logic/k/b$1;-><init>(Lcom/jiliguala/niuwa/logic/k/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/b$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/k/b$2;-><init>(Lcom/jiliguala/niuwa/logic/k/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/logic/k/b$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/logic/k/b$3;-><init>(Lcom/jiliguala/niuwa/logic/k/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/k/b;->b(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/k/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/k/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/k/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method
