.class public Lcom/mob/tools/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/c/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/tools/c/a;


# instance fields
.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mob/tools/c/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/c/a;->b:Ljava/util/HashSet;

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 21
    invoke-direct {p0, p1}, Lcom/mob/tools/c/a;->b(Landroid/content/Context;)V

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-direct {p0, p1}, Lcom/mob/tools/c/a;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mob/tools/c/a;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-class v1, Lcom/mob/tools/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/tools/c/a;->a:Lcom/mob/tools/c/a;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/mob/tools/c/a;

    invoke-direct {v0, p0}, Lcom/mob/tools/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/tools/c/a;->a:Lcom/mob/tools/c/a;

    .line 31
    :cond_0
    sget-object v0, Lcom/mob/tools/c/a;->a:Lcom/mob/tools/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/mob/tools/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/c/a$a;

    .line 131
    .local v0, "t":Lcom/mob/tools/c/a$a;
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1}, Lcom/mob/tools/c/a$a;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 135
    .end local v0    # "t":Lcom/mob/tools/c/a$a;
    :cond_1
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/mob/tools/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/c/a$a;

    .line 123
    .local v0, "t":Lcom/mob/tools/c/a$a;
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/mob/tools/c/a$a;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 127
    .end local v0    # "t":Lcom/mob/tools/c/a$a;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/c/a;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/c/a;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/c/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/c/a;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/c/a;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/c/a;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/mob/tools/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/c/a$a;

    .line 139
    .local v0, "t":Lcom/mob/tools/c/a$a;
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1}, Lcom/mob/tools/c/a$a;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 143
    .end local v0    # "t":Lcom/mob/tools/c/a$a;
    :cond_1
    return-void
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/mob/tools/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/c/a$a;

    .line 171
    .local v0, "t":Lcom/mob/tools/c/a$a;
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p1, p2}, Lcom/mob/tools/c/a$a;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 175
    .end local v0    # "t":Lcom/mob/tools/c/a$a;
    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/mob/tools/c/a$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/c/a$1;-><init>(Lcom/mob/tools/c/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 66
    return-void
.end method

.method static synthetic b(Lcom/mob/tools/c/a;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/c/a;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/c/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/c/a;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/c/a;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/c/a;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/mob/tools/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/c/a$a;

    .line 147
    .local v0, "t":Lcom/mob/tools/c/a$a;
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1}, Lcom/mob/tools/c/a$a;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 151
    .end local v0    # "t":Lcom/mob/tools/c/a$a;
    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/c/e;->X()Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "thread":Ljava/lang/Object;
    const-string v2, "mInstrumentation"

    new-instance v3, Lcom/mob/tools/c/a$2;

    invoke-direct {v3, p0}, Lcom/mob/tools/c/a$2;-><init>(Lcom/mob/tools/c/a;)V

    invoke-static {v1, v2, v3}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "thread":Ljava/lang/Object;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/mob/tools/c/a;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/c/a;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/c/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/mob/tools/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/c/a$a;

    .line 155
    .local v0, "t":Lcom/mob/tools/c/a$a;
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1}, Lcom/mob/tools/c/a$a;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 159
    .end local v0    # "t":Lcom/mob/tools/c/a$a;
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/mob/tools/c/a;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/c/a;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/c/a;->d(Landroid/app/Activity;)V

    return-void
.end method

.method private e(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/mob/tools/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/c/a$a;

    .line 163
    .local v0, "t":Lcom/mob/tools/c/a$a;
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, p1}, Lcom/mob/tools/c/a$a;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 167
    .end local v0    # "t":Lcom/mob/tools/c/a$a;
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/mob/tools/c/a;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/c/a;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/c/a;->e(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/mob/tools/c/a$a;)V
    .locals 1
    .param p1, "tracker"    # Lcom/mob/tools/c/a$a;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/mob/tools/c/a$a;)V
    .locals 1
    .param p1, "tracker"    # Lcom/mob/tools/c/a$a;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
