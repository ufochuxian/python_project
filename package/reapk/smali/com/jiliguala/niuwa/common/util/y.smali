.class public Lcom/jiliguala/niuwa/common/util/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/jiliguala/niuwa/common/util/y;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/y;->b:Ljava/util/List;

    .line 20
    return-void
.end method

.method public static declared-synchronized a()Lcom/jiliguala/niuwa/common/util/y;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/jiliguala/niuwa/common/util/y;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/common/util/y;->a:Lcom/jiliguala/niuwa/common/util/y;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/jiliguala/niuwa/common/util/y;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/y;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/y;->a:Lcom/jiliguala/niuwa/common/util/y;

    .line 26
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/common/util/y;->a:Lcom/jiliguala/niuwa/common/util/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/y;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 36
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "MainActivity"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 40
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c()Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/y;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/y;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/y;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 54
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 56
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/y;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
