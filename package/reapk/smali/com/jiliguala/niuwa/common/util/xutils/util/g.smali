.class public Lcom/jiliguala/niuwa/common/util/xutils/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;,
        Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;,
        Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;,
        Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static f:Lcom/jiliguala/niuwa/common/util/xutils/util/g$b; = null

.field private static final g:I = 0x0

.field private static final h:I = 0x1


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;

.field private d:Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;

.field private e:Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->c:Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;

    .line 23
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->d:Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;

    .line 25
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->e:Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;

    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->b:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/util/xutils/util/g;)Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->c:Lcom/jiliguala/niuwa/common/util/xutils/util/g$d;

    return-object v0
.end method

.method static synthetic d()Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->f:Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a()Lcom/jiliguala/niuwa/common/util/xutils/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->d:Lcom/jiliguala/niuwa/common/util/xutils/util/g$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;

    .prologue
    .line 116
    sput-object p1, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->f:Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;

    .line 117
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a()Lcom/jiliguala/niuwa/common/util/xutils/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->e:Lcom/jiliguala/niuwa/common/util/xutils/util/g$c;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->f:Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;

    .line 122
    return-void
.end method
