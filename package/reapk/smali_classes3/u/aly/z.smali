.class public final Lu/aly/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/ac;


# static fields
.field private static c:Lu/aly/z;


# instance fields
.field private a:Lu/aly/ac;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lu/aly/z;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Lu/aly/y;

    iget-object v1, p0, Lu/aly/z;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/z;->a:Lu/aly/ac;

    .line 24
    return-void
.end method

.method static synthetic a(Lu/aly/z;)Lu/aly/ac;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lu/aly/z;->a:Lu/aly/ac;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lu/aly/z;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lu/aly/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/z;->c:Lu/aly/z;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 32
    new-instance v0, Lu/aly/z;

    invoke-direct {v0, p0}, Lu/aly/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/z;->c:Lu/aly/z;

    .line 35
    :cond_0
    sget-object v0, Lu/aly/z;->c:Lu/aly/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Lu/aly/y;
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/z;->a:Lu/aly/ac;

    check-cast v0, Lu/aly/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lu/aly/z$2;

    invoke-direct {v0, p0}, Lu/aly/z$2;-><init>(Lu/aly/z;)V

    invoke-static {v0}, Lu/aly/az;->b(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lu/aly/z$1;

    invoke-direct {v0, p0, p1}, Lu/aly/z$1;-><init>(Lu/aly/z;Ljava/lang/Object;)V

    invoke-static {v0}, Lu/aly/az;->b(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public a(Lu/aly/ac;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lu/aly/z;->a:Lu/aly/ac;

    .line 40
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lu/aly/z$3;

    invoke-direct {v0, p0}, Lu/aly/z$3;-><init>(Lu/aly/z;)V

    invoke-static {v0}, Lu/aly/az;->c(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
