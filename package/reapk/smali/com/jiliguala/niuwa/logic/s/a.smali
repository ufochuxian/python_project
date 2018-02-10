.class public Lcom/jiliguala/niuwa/logic/s/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/s/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1000

.field public static final b:I = 0x1001

.field public static final c:I = 0x1002

.field private static final d:Ljava/lang/String;

.field private static e:Lcom/jiliguala/niuwa/logic/s/a;


# instance fields
.field private f:Landroid/content/SharedPreferences;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/jiliguala/niuwa/logic/s/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/s/a;->d:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/jiliguala/niuwa/logic/s/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/s/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/s/a;->e:Lcom/jiliguala/niuwa/logic/s/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/s/a;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/jiliguala/niuwa/logic/s/a;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/s/a;->e:Lcom/jiliguala/niuwa/logic/s/a;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/jiliguala/niuwa/logic/s/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/s/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/s/a;->e:Lcom/jiliguala/niuwa/logic/s/a;

    .line 35
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/s/a;->e:Lcom/jiliguala/niuwa/logic/s/a;

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/s/a$a;)V
    .locals 5
    .param p1, "listener"    # Lcom/jiliguala/niuwa/logic/s/a$a;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 49
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/s/a;->f:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/logic/s/a;->g:I

    if-nez v1, :cond_1

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/s/a;->b()V

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/s/a;->f:Landroid/content/SharedPreferences;

    const-string v2, "CUR_VER"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 53
    .local v0, "localVer":I
    if-ne v0, v3, :cond_2

    .line 55
    const/16 v1, 0x1000

    iget v2, p0, Lcom/jiliguala/niuwa/logic/s/a;->g:I

    invoke-interface {p1, v1, v0, v2}, Lcom/jiliguala/niuwa/logic/s/a$a;->a(III)V

    .line 56
    const-string v1, "CUR_VER"

    iget v2, p0, Lcom/jiliguala/niuwa/logic/s/a;->g:I

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 57
    const-string v1, "FIRST_START"

    invoke-static {v1, v4}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_2
    iget v1, p0, Lcom/jiliguala/niuwa/logic/s/a;->g:I

    if-ge v0, v1, :cond_3

    .line 60
    const/16 v1, 0x1001

    iget v2, p0, Lcom/jiliguala/niuwa/logic/s/a;->g:I

    invoke-interface {p1, v1, v0, v2}, Lcom/jiliguala/niuwa/logic/s/a$a;->a(III)V

    .line 61
    const-string v1, "CUR_VER"

    iget v2, p0, Lcom/jiliguala/niuwa/logic/s/a;->g:I

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 62
    const-string v1, "FIRST_START"

    invoke-static {v1, v4}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 65
    :cond_3
    const/16 v1, 0x1002

    iget v2, p0, Lcom/jiliguala/niuwa/logic/s/a;->g:I

    invoke-interface {p1, v1, v0, v2}, Lcom/jiliguala/niuwa/logic/s/a$a;->a(III)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/s/a;->f:Landroid/content/SharedPreferences;

    .line 41
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->g()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/s/a;->g:I

    .line 42
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/jiliguala/niuwa/logic/s/a;->g:I

    return v0
.end method
