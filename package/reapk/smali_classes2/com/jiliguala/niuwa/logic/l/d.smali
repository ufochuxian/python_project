.class public Lcom/jiliguala/niuwa/logic/l/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/jiliguala/niuwa/logic/l/d;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/d;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/l/d;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/l/d;->a:Lcom/jiliguala/niuwa/logic/l/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/l/d;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/jiliguala/niuwa/logic/l/d;->a:Lcom/jiliguala/niuwa/logic/l/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .param p1, "topActivity"    # Landroid/app/Activity;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d;->b:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
