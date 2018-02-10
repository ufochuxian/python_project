.class public Lcom/youzan/androidsdk/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/youzan/androidsdk/b/h;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/youzan/androidsdk/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/youzan/androidsdk/b/h;->a:Lcom/youzan/androidsdk/b/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youzan/androidsdk/b/h;->b:Landroid/util/SparseArray;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/youzan/androidsdk/b/h;->b:Landroid/util/SparseArray;

    .line 22
    return-void
.end method

.method public static a()Lcom/youzan/androidsdk/b/h;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/youzan/androidsdk/b/h;->a:Lcom/youzan/androidsdk/b/h;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/youzan/androidsdk/b/h;

    invoke-direct {v0}, Lcom/youzan/androidsdk/b/h;-><init>()V

    sput-object v0, Lcom/youzan/androidsdk/b/h;->a:Lcom/youzan/androidsdk/b/h;

    .line 17
    :cond_0
    sget-object v0, Lcom/youzan/androidsdk/b/h;->a:Lcom/youzan/androidsdk/b/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/youzan/androidsdk/b/f;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youzan/androidsdk/b/h;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youzan/androidsdk/b/f;

    return-object v0
.end method

.method public a(Lcom/youzan/androidsdk/b/f;)V
    .locals 2
    .param p1, "event"    # Lcom/youzan/androidsdk/b/f;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youzan/androidsdk/b/h;->b:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/youzan/androidsdk/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    return-void
.end method

.method public b()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/youzan/androidsdk/b/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youzan/androidsdk/b/h;->b:Landroid/util/SparseArray;

    return-object v0
.end method
