.class public Lcom/jiliguala/niuwa/common/util/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/v$a;
    }
.end annotation


# static fields
.field protected static final a:I = 0x7b

.field public static final b:Ljava/lang/String;


# instance fields
.field public c:Lcom/jiliguala/niuwa/common/util/v$a;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/common/util/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/v;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/v;->d:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "perms"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 52
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v2

    .line 56
    :cond_1
    array-length v5, p1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, p1, v4

    .line 57
    .local v1, "perm":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/s;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    move v0, v2

    .line 59
    .local v0, "hasPerm":Z
    :goto_2
    if-nez v0, :cond_3

    move v2, v3

    .line 60
    goto :goto_0

    .end local v0    # "hasPerm":Z
    :cond_2
    move v0, v3

    .line 57
    goto :goto_2

    .line 56
    .restart local v0    # "hasPerm":Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/common/util/v$a;)V
    .locals 2
    .param p1, "checkListener"    # Lcom/jiliguala/niuwa/common/util/v$a;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/v;->c:Lcom/jiliguala/niuwa/common/util/v$a;

    .line 34
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 35
    .local v0, "hasAudioPermission":I
    :goto_0
    if-nez v0, :cond_1

    .line 36
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/v;->c:Lcom/jiliguala/niuwa/common/util/v$a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/util/v$a;->a()V

    .line 47
    :goto_1
    return-void

    .line 34
    .end local v0    # "hasAudioPermission":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 38
    .restart local v0    # "hasAudioPermission":I
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/v;->c:Lcom/jiliguala/niuwa/common/util/v$a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/util/v$a;->b()V

    goto :goto_1
.end method
